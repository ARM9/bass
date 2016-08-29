struct BassTable : Bass {
  using Bass::assemble;

  virtual void initialize() override;
  virtual bool assemble(const string& statement) override;

protected:
  struct Prefix {
    string text;
    unsigned size;
  };

  struct Number {
    unsigned bits;
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
    enum class Match : unsigned { Exact, Strong, Weak } match;
    unsigned data;
    unsigned bits;
    unsigned argument;
    signed displacement;
  };

  struct Opcode {
    vector<Prefix> prefix;
    vector<Number> number;
    vector<Format> format;
    string pattern;
  };

  vector<Opcode> table;
  uint64_t bitval, bitpos;

  uint64_t swapEndian(uint64_t data, unsigned bits);
  unsigned bitLength(string& text) const;
  void writeBits(uint64_t data, unsigned bits);
  void parseDirective(string& line);
  bool parseTable(const string& text);
  void assembleTableLHS(Opcode& opcode, const string& text);
  void assembleTableRHS(Opcode& opcode, const string& text);
};
// vim:sts=2
