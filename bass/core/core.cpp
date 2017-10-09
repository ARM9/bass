#include "evaluate.cpp"
#include "analyze.cpp"
#include "execute.cpp"
#include "assemble.cpp"
#include "utility.cpp"

auto Bass::target(const string& filename, bool create) -> bool {
  if(targetFile.open()) targetFile.close();
  if(!filename) return true;

  //cannot modify a file unless it exists
  if(!file::exists(filename)) create = true;

  if(!targetFile.open(filename, create ? file::mode::write : file::mode::modify)) {
    print(stderr, "warning: unable to open target file: ", filename, "\n");
    return false;
  }

  return true;
}

auto Bass::source(const string& filename) -> bool {
  if(!file::exists(filename)) {
    print(stderr, "warning: source file not found: ", filename, "\n");
    return false;
  }

  uint fileNumber = sourceFilenames.size();
  sourceFilenames.append(filename);

  string data = file::read(filename);
  data.transform("\t\r", "  ");

  auto lines = data.split("\n");
  for(uint lineNumber : range(lines)) {
    if(auto position = lines[lineNumber].qfind("//")) {
      lines[lineNumber].resize(position());  //remove comments
    }

    auto blocks = lines[lineNumber].qsplit(";").strip();
    for(uint blockNumber : range(blocks)) {
      string statement = blocks[blockNumber];
      strip(statement);
      if(!statement) continue;

      if(statement.match("include \"?*\"")) {
        statement.trim("include \"", "\"", 1L);
        source({Location::path(filename), statement});
      } else {
        Instruction instruction;
        instruction.statement = statement;
        instruction.fileNumber = fileNumber;
        instruction.lineNumber = 1 + lineNumber;
        instruction.blockNumber = 1 + blockNumber;
        program.append(instruction);
      }
    }
  }

  return true;
}

auto Bass::define(const string& name, const string& value) -> void {
  defines.insert({name, {}, value});
}

auto Bass::constant(const string& name, const string& value) -> void {
  try {
    constants.insert({name, evaluate(value, Evaluation::Strict)});
  } catch(...) {
  }
}

auto Bass::assemble(bool strict) -> bool {
  this->strict = strict;

  try {
    phase = Phase::Analyze;
    analyze();

    phase = Phase::Query;
    architecture = new Architecture{*this};
    execute();

    phase = Phase::Write;
    architecture = new Architecture{*this};
    execute();
  } catch(...) {
    return false;
  }

  return true;
}

//internal

auto Bass::pc() const -> uint {
  return origin + base;
}

auto Bass::seek(uint offset) -> void {
  if(!targetFile.open()) return;
  if(writePhase()) targetFile.seek(offset);
}

auto Bass::write(uint64_t data, uint length) -> void {
  if(writePhase()) {
    if(targetFile.open()) {
      if(endian == Endian::LSB) targetFile.writel(data, length);
      if(endian == Endian::MSB) targetFile.writem(data, length);
    } else if(!isatty(fileno(stdout))) {
      if(endian == Endian::LSB) for(auto n :  range(length)) fputc(data >> n * 8, stdout);
      if(endian == Endian::MSB) for(auto n : rrange(length)) fputc(data >> n * 8, stdout);
    }
  }
  origin += length;
}

auto Bass::printInstruction() -> void {
  if(activeInstruction) {
    auto& i = *activeInstruction;
    print(stderr, sourceFilenames[i.fileNumber], ":", i.lineNumber, ":", i.blockNumber, ": ", i.statement, "\n");
  }
}

template<typename... P> auto Bass::notice(P&&... p) -> void {
  string s{forward<P>(p)...};
  print(stderr, "notice: ", s, "\n");
  printInstruction();
}

template<typename... P> auto Bass::warning(P&&... p) -> void {
  string s{forward<P>(p)...};
  print(stderr, "warning: ", s, "\n");
  printInstruction();

  if(!strict) return;
  struct BassWarning {};
  throw BassWarning();
}

template<typename... P> auto Bass::error(P&&... p) -> void {
  string s{forward<P>(p)...};
  print(stderr, "error: ", s, "\n");
  printInstruction();

  struct BassError {};
  throw BassError();
}
