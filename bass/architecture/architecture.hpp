struct Architecture {
  Architecture(Bass& self) : self(self) {
  }

  virtual ~Architecture() {
  }

  virtual auto assemble(const string& statement) -> bool {
    return false;
  }

  //

  auto pc() const -> uint {
    return self.pc();
  }

  auto endian() const -> Bass::Endian {
    return self.endian;
  }

  auto setEndian(Bass::Endian endian) -> void {
    self.endian = endian;
  }

  auto readArchitecture(const string& s) -> string {
    return self.readArchitecture(s);
  }

  auto evaluate(const string& expression, Bass::Evaluation mode = Bass::Evaluation::Default) -> int64_t {
    return self.evaluate(expression, mode);
  }

  auto write(uint64_t data, uint length = 1) -> void {
    return self.write(data, length);
  }

  template<typename... P> auto notice(P&&... p) -> void {
    return self.notice(forward<P>(p)...);
  }

  template<typename... P> auto warning(P&&... p) -> void {
    return self.warning(forward<P>(p)...);
  }

  template<typename... P> auto error(P&&... p) -> void {
    return self.error(forward<P>(p)...);
  }

  Bass& self;
};
