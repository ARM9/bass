struct Table : Architecture {
  Table(Bass& self, const string& table);
  auto assemble(const string& statement) -> bool override;

private:
  struct Prefix {
    string text;
    uint size;
  };

  struct Number {
    uint bits;
  };

  struct Format {
    enum class Type : uint { Static, Absolute, Relative, Repeat, ShiftRight } type;
    enum class Match : uint { Exact, Strong, Weak } match;
    uint data;
    uint bits;
    uint argument;
    int displacement;
  };

  struct Opcode {
    vector<Prefix> prefix;
    vector<Number> number;
    vector<Format> format;
    string pattern;
  };

  auto bitLength(string& text) const -> uint;
  auto writeBits(uint64_t data, uint bits) -> void;
  auto parseTable(const string& text) -> bool;
  auto assembleTableLHS(Opcode& opcode, const string& text) -> void;
  auto assembleTableRHS(Opcode& opcode, const string& text) -> void;

  vector<Opcode> table;
  uint64_t bitval, bitpos;
};
