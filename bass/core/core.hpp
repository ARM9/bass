
struct Bass {
  bool target(const string& filename, bool create);
  bool source(const string& filename);
  void define(const string& name, const string& value);
  void constant(const string& name, const string& value);
  bool assemble(bool strict = false);

  bool writeSymfile(const string& filename, bool create);

protected:
  enum class Phase : unsigned { Analyze, Query, Write };
  enum class Endian : unsigned { LSB, MSB };

  struct Instruction {
    string statement;
    unsigned ip;

    unsigned fileNumber;
    unsigned lineNumber;
    unsigned blockNumber;
  };

  struct Macro {
    string name;
    lstring parameters;
    unsigned ip;
    bool scoped;

    unsigned hash() const { return name.hash(); }
    bool operator==(const Macro& source) const { return name == source.name; }
    bool operator< (const Macro& source) const { return name <  source.name; }
    Macro() {}
    Macro(const string& name) : name(name) {}
    Macro(const string& name, const lstring& parameters, unsigned ip, bool scoped) : name(name), parameters(parameters), ip(ip), scoped(scoped) {}
  };

  struct Define {
    string name;
    string value;

    unsigned hash() const { return name.hash(); }
    bool operator==(const Define& source) const { return name == source.name; }
    bool operator< (const Define& source) const { return name <  source.name; }
    Define() {}
    Define(const string& name) : name(name) {}
    Define(const string& name, const string& value) : name(name), value(value) {}
  };

  struct Variable {
    string name;
    int64_t value;

    unsigned hash() const { return name.hash(); }
    bool operator==(const Variable& source) const { return name == source.name; }
    bool operator< (const Variable& source) const { return name <  source.name; }
    Variable() {}
    Variable(const string& name) : name(name) {}
    Variable(const string& name, int64_t value) : name(name), value(value) {}
  };

  typedef Variable Constant;  //Variable and Constant structures are identical

  struct StackFrame {
    unsigned ip;
    bool scoped;

    hashset<Macro> macros;
    hashset<Define> defines;
    hashset<Variable> variables;
  };

  struct BlockStack {
    unsigned ip;
    string type;
  };

  file targetFile;
  lstring sourceFilenames;

  Instruction* activeInstruction = nullptr;  //used by notice, warning, error
  vector<Instruction> program;      //parsed source code statements
  vector<BlockStack> blockStack;    //track the start and end of blocks
  set<Define> defines;              //defines specified on the terminal
  hashset<Constant> constants;      //constants support forward-declaration
  vector<StackFrame> stackFrame;    //macros, defines and variables do not
  vector<bool> ifStack;             //track conditional matching
  lstring pushStack;                //track push, pull directives
  lstring scope;                    //track scope recursion
  int64_t stringTable[256];         //overrides for d[bwldq] text strings
  Phase phase;                      //phase of assembly
  Endian endian = Endian::LSB;      //used for multi-byte writes (d[bwldq], etc)
  unsigned macroInvocationCounter;  //used for {#} support
  unsigned ip = 0;                  //instruction pointer into program
  unsigned origin = 0;              //file offset
  signed base = 0;                  //file offset to memory map displacement
  unsigned lastLabelCounter = 1;    //- instance counter
  unsigned nextLabelCounter = 1;    //+ instance counter
  bool strict = false;              //upgrade warnings to errors when true

  bool analyzePhase() const { return phase == Phase::Analyze; }
  bool queryPhase() const { return phase == Phase::Query; }
  bool writePhase() const { return phase == Phase::Write; }

  //core
  unsigned pc() const;
  void seek(unsigned offset);
  void write(uint64_t data, unsigned length = 1);

  void printInstruction();
  template<typename... Args> void notice(Args&&... args);
  template<typename... Args> void warning(Args&&... args);
  template<typename... Args> void error(Args&&... args);

  string& reduceWhitespace(string& s);

  //evaluate
  enum class Evaluation : unsigned { Default = 0, Strict = 1 };  //strict mode disallows forward-declaration of constants
  int64_t evaluate(const string& expression, Evaluation mode = Evaluation::Default);
  int64_t evaluate(Eval::Node* node, Evaluation mode);
  vector<int64_t> evaluateParameters(Eval::Node* node, Evaluation mode);
  int64_t evaluateFunction(Eval::Node* node, Evaluation mode);
  int64_t evaluateLiteral(Eval::Node* node, Evaluation mode);
  int64_t evaluateAssign(Eval::Node* node, Evaluation mode);

  //analyze
  bool analyze();
  bool analyzeInstruction(Instruction& instruction);

  //execute
  bool execute();
  bool executeInstruction(Instruction& instruction);

  //assemble
  virtual void initialize();
  virtual bool assemble(const string& statement);

  //symfile
  string symfileBuffer;
  void appendSymfile(const string& entry);
  void appendSymfile(const string& label, unsigned data);

  //utility
  void setMacro(const string& name, const lstring& parameters, unsigned ip, bool scoped, bool local);
  maybe<Macro&> findMacro(const string& name, bool local);
  maybe<Macro&> findMacro(const string& name);

  void setDefine(const string& name, const string& value, bool local);
  maybe<Define&> findDefine(const string& name, bool local);
  maybe<Define&> findDefine(const string& name);

  void setVariable(const string& name, int64_t value, bool local);
  maybe<Variable&> findVariable(const string& name, bool local);
  maybe<Variable&> findVariable(const string& name);

  void setConstant(const string& name, int64_t value);
  maybe<Constant&> findConstant(const string& name);

  void evaluateDefines(string& statement);

  string filepath();
  string text(string s);
  int64_t character(string s);
};

// vim:sts=2 sw=2
