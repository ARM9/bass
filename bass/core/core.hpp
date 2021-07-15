struct Architecture;

struct Bass {
  auto target(const string& filename, bool create) -> bool;
  auto source(const string& filename) -> bool;
  auto define(const string& name, const string& value) -> void;
  auto constant(const string& name, const string& value) -> void;
  auto assemble(bool strict = false) -> bool;

  enum class Phase : uint { Analyze, Query, Write };
  enum class Endian : uint { LSB, MSB };
  enum class Evaluation : uint { Default = 0, Strict = 1 };  //strict mode disallows forward-declaration of constants

  struct Instruction {
    string statement;
    uint ip;

    uint fileNumber;
    uint lineNumber;
    uint blockNumber;
  };

  struct Macro {
    Macro() {}
    Macro(const string& name) : name(name) {}
    Macro(const string& name, const string_vector& parameters, uint ip, bool inlined) : name(name), parameters(parameters), ip(ip), inlined(inlined) {}

    auto hash() const -> uint { return name.hash(); }
    auto operator==(const Macro& source) const -> bool { return name == source.name; }
    auto operator< (const Macro& source) const -> bool { return name <  source.name; }

    string name;
    string_vector parameters;
    uint ip;
    bool inlined;
  };

  struct Define {
    Define() {}
    Define(const string& name) : name(name) {}
    Define(const string& name, const string_vector& parameters, const string& value) : name(name), parameters(parameters), value(value) {}

    auto hash() const -> uint { return name.hash(); }
    auto operator==(const Define& source) const -> bool { return name == source.name; }
    auto operator< (const Define& source) const -> bool { return name <  source.name; }

    string name;
    string_vector parameters;
    string value;
  };

  using Expression = Define;  //Define and Expression structures are identical

  struct Variable {
    Variable() {}
    Variable(const string& name) : name(name) {}
    Variable(const string& name, int64_t value) : name(name), value(value) {}

    auto hash() const -> uint { return name.hash(); }
    auto operator==(const Variable& source) const -> bool { return name == source.name; }
    auto operator< (const Variable& source) const -> bool { return name <  source.name; }

    string name;
    int64_t value;
  };

  using Constant = Variable;  //Variable and Constant structures are identical

  struct Array {
    Array() {}
    Array(const string& name) : name(name) {}
    Array(const string& name, vector<int64_t> values) : name(name), values(values) {}

    auto hash() const -> uint { return name.hash(); }
    auto operator==(const Array& source) const -> bool { return name == source.name; }
    auto operator< (const Array& source) const -> bool { return name <  source.name; }

    string name;
    vector<int64_t> values;
  };

  struct Frame {
    enum class Level : uint {
      Inline,  //use deepest frame (eg for parameters)
      Active,  //use deepest non-inline frame
      Parent,  //use second-deepest non-inline frame
      Global,  //use root frame
    };

    uint ip;
    bool inlined;

    hashset<Macro> macros;
    hashset<Define> defines;
    hashset<Expression> expressions;
    hashset<Variable> variables;
    hashset<Array> arrays;
  };

  struct Block {
    uint ip;
    string type;
  };

  struct Tracker {
    bool enable = false;
    set<int64_t> addresses;
  };

protected:
  auto analyzePhase() const -> bool { return phase == Phase::Analyze; }
  auto queryPhase() const -> bool { return phase == Phase::Query; }
  auto writePhase() const -> bool { return phase == Phase::Write; }

  //core.cpp
  auto pc() const -> uint;
  auto seek(uint offset) -> void;
  auto track(uint length) -> void;
  auto write(uint64_t data, uint length = 1) -> void;

  auto printInstruction() -> void;
  template<typename... P> auto notice(P&&... p) -> void;
  template<typename... P> auto warning(P&&... p) -> void;
  template<typename... P> auto error(P&&... p) -> void;

  //evaluate.cpp
  auto evaluate(const string& expression, Evaluation mode = Evaluation::Default) -> int64_t;
  auto evaluate(Eval::Node* node, Evaluation mode) -> int64_t;
  auto quantifyParameters(Eval::Node* node) -> int64_t;
  auto evaluateParameters(Eval::Node* node, Evaluation mode) -> vector<int64_t>;
  auto evaluateExpression(Eval::Node* node, Evaluation mode) -> int64_t;
  auto evaluateString(Eval::Node* node) -> string;
  auto evaluateLiteral(Eval::Node* node, Evaluation mode) -> int64_t;
  auto evaluateSubscript(Eval::Node* node, Evaluation mode) -> int64_t;
  auto evaluateAssign(Eval::Node* node, Evaluation mode) -> int64_t;

  //analyze.cpp
  auto analyze() -> bool;
  auto analyzeInstruction(Instruction& instruction) -> bool;

  //execute.cpp
  auto execute() -> bool;
  auto executeInstruction(Instruction& instruction) -> bool;

  //assemble.cpp
  auto initialize() -> void;
  auto assemble(const string& statement) -> bool;
  auto assembleString(const string& parameters) -> string;

  //utility.cpp
  auto setMacro(const string& name, const string_vector& parameters, uint ip, bool inlined, Frame::Level level) -> void;
  auto findMacro(const string& name) -> maybe<Macro&>;

  auto setDefine(const string& name, const string_vector& parameters, const string& value, Frame::Level level) -> void;
  auto findDefine(const string& name) -> maybe<Define&>;

  auto setExpression(const string& name, const string_vector& parameters, const string& value, Frame::Level level) -> void;
  auto findExpression(const string& name) -> maybe<Expression&>;

  auto setVariable(const string& name, int64_t value, Frame::Level level) -> void;
  auto findVariable(const string& name) -> maybe<Variable&>;

  auto setConstant(const string& name, int64_t value) -> void;
  auto findConstant(const string& name) -> maybe<Constant&>;

  auto setArray(const string& name, const vector<int64_t>& values, Frame::Level level) -> void;
  auto findArray(const string& name) -> maybe<Array&>;

  auto evaluateDefines(string& statement) -> void;

  auto readArchitecture(const string& s) -> string;

  auto filepath() -> string;
  auto split(const string& s) -> string_vector;
  auto strip(string& s) -> void;
  auto validate(const string& s) -> bool;
  auto text(string s) -> string;
  auto character(const string& s) -> int64_t;

  //internal state
  Instruction* activeInstruction = nullptr;  //used by notice, warning, error
  vector<Instruction> program;    //parsed source code statements
  vector<Block> blocks;           //track the start and end of blocks
  set<Define> defines;            //defines specified on the terminal
  hashset<Constant> constants;    //constants support forward-declaration
  vector<Frame> frames;           //macros, defines and variables do not
  vector<bool> conditionals;      //track conditional matching
  string_vector queue;            //track enqueue, dequeue directives
  string_vector scope;            //track scope recursion
  int64_t stringTable[256];       //overrides for d[bwldq] text strings
  Phase phase;                    //phase of assembly
  Endian endian = Endian::LSB;    //used for multi-byte writes (d[bwldq], etc)
  Tracker tracker;                //used to track writes to detect overwrites
  uint macroInvocationCounter;    //used for {#} support
  uint ip = 0;                    //instruction pointer into program
  uint origin = 0;                //file offset
  int base = 0;                   //file offset to memory map displacement
  uint lastLabelCounter = 1;      //- instance counter
  uint nextLabelCounter = 1;      //+ instance counter
  bool charactersUseMap = false;  //0 = '*' parses as ASCII; 1 = '*' uses stringTable[]
  bool strict = false;            //upgrade warnings to errors when true

  file_buffer targetFile;
  string_vector sourceFilenames;

  shared_pointer<Architecture> architecture;
  friend class Architecture;
};
