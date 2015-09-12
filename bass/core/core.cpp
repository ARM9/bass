#include "evaluate.cpp"
#include "analyze.cpp"
#include "execute.cpp"
#include "assemble.cpp"
#include "utility.cpp"
#include "symfile.cpp"

bool Bass::target(const string& filename, bool create) {
  if(targetFile.open()) targetFile.close();
  if(filename.empty()) return true;

  //cannot modify a file unless it exists
  if(!file::exists(filename)) create = true;

  if(!targetFile.open(filename, create ? file::mode::write : file::mode::modify)) {
    print("warning: unable to open target file: ", filename, "\n");
    return false;
  }

  return true;
}

bool Bass::source(const string& filename) {
  if(!file::exists(filename)) {
    print("warning: source file not found: ", filename, "\n");
    return false;
  }

  unsigned fileNumber = sourceFilenames.size();
  sourceFilenames.append(filename);

  string data = file::read(filename);
  data.transform("\t\r", "  ");

  lstring lines = data.split("\n");
  for(unsigned lineNumber = 0; lineNumber < lines.size(); lineNumber++) {
    if(auto position = lines[lineNumber].find("//")) lines[lineNumber].resize(position());  //remove comments

    reduceWhitespace(lines[lineNumber]);

    lstring blocks = lines[lineNumber].qsplit(";").strip();
    for(unsigned blockNumber = 0; blockNumber < blocks.size(); blockNumber++) {
      string statement = blocks[blockNumber].strip();
      if(statement.empty()) continue;

      if(statement.match("include \"?*\"")) {
        statement.trim<1>("include \"", "\"");
        source({dir(filename), statement});
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

string& Bass::reduceWhitespace(string& s) {
// '[ ]+' -> ' '
// ad-hoc whitespace compression
// this only fixes some problems, see bass/.test/space_test
  bool insideQuotes = false;
  char *p = s.data();
  unsigned len = s.length();

  for(unsigned i = 0; i < len; i++) {
    if(!insideQuotes) {
      if(p[i] == ' ') {
        unsigned j = ++i;
        for(; j < len && p[j] == ' '; j++) {}
        if(j > i) {
          memmove(p + i, p + j, len - (j - 1));
          len -= j - i;
        }
      }
    }
    if(p[i] == '"') {
      insideQuotes = !insideQuotes;
    }
  }
  //s.resize(len);
  return s;
}

void Bass::define(const string& name, const string& value) {
  defines.insert({name, value});
}

void Bass::constant(const string& name, const string& value) {
  try {
    constants.insert({name, evaluate(value, Evaluation::Strict)});
  } catch(...) {
  }
}

bool Bass::assemble(bool strict) {
  this->strict = strict;

  try {
    phase = Phase::Analyze;
    analyze();

    phase = Phase::Query;
    execute();

    phase = Phase::Write;
    execute();
  } catch(...) {
    return false;
  }

  return true;
}
//internal

unsigned Bass::pc() const {
  return origin + base;
}

void Bass::seek(unsigned offset) {
  if(!targetFile.open()) return;
  if(writePhase()) targetFile.seek(offset);
}

void Bass::write(uint64_t data, unsigned length) {
  if(!targetFile.open()) return;
  if(writePhase()) {
    if(endian == Endian::LSB) targetFile.writel(data, length);
    if(endian == Endian::MSB) targetFile.writem(data, length);
  }
  origin += length;
}

void Bass::printInstruction() {
  if(activeInstruction) {
    auto& i = *activeInstruction;
    print(sourceFilenames[i.fileNumber], ":", i.lineNumber, ":", i.blockNumber, ": ", i.statement, "\n");
  }
}

template<typename... Args> void Bass::notice(Args&&... args) {
  string s = string(std::forward<Args>(args)...);
  print("notice: ", s, "\n");
  printInstruction();
}

template<typename... Args> void Bass::warning(Args&&... args) {
  string s = string(std::forward<Args>(args)...);
  print("warning: ", s, "\n");
  printInstruction();

  if(strict == false) return;
  struct BassWarning {};
  throw BassWarning();
}

template<typename... Args> void Bass::error(Args&&... args) {
  string s = string(std::forward<Args>(args)...);
  print("error: ", s, "\n");
  printInstruction();

  struct BassError {};
  throw BassError();
}

// vim:sts=2 sw=2
