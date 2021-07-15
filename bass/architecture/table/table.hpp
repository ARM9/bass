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
    enum class Type : unsigned {
        Static, Absolute,
        Relative,
        Repeat,
        ShiftRight, ShiftLeft,
        RelativeShiftRight,
        Negative,
        NegativeShiftRight
    } type;
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
  auto swapEndian(uint64_t data, unsigned bits) -> uint64_t;

  vector<Opcode> table;
  uint64_t bitval, bitpos;
};
