#define arch(name) static string Arch_##name
#include "snes-cpu.arch"
#include "snes-smp.arch"
#include "snes-gsu.arch"
//#include "snes-cx4.arch"
#include "n64-cpu.arch"
#include "n64-rdp.arch"
#include "n64-rsp.arch"
#include "gb-cpu.arch"
#undef arch

void BassTable::initialize() {
  Bass::initialize();

  bitval = 0;
  bitpos = 0;
  table.reset();
}

bool BassTable::assemble(const string& statement) {
  if(Bass::assemble(statement) == true) return true;

  string s = statement;

  if(s.match("arch ?*")) {
    s.ltrim<1>("arch ");
    string data;
    if(0);
    else if(s == "reset") data = "";
    else if(s == "snes.cpu") data = Arch_snes_cpu;
    else if(s == "snes.smp") data = Arch_snes_smp;
    else if(s == "snes.gsu") data = Arch_snes_gsu;
    //else if(s == "snes.cx4") data = Arch_snes_cx4;
    else if(s == "n64.cpu") data = Arch_n64_cpu;
    else if(s == "n64.rdp") data = Arch_n64_rdp;
    else if(s == "n64.rsp") data = Arch_n64_rsp;
    else if(s == "gb.cpu") data = Arch_gb_cpu;
    else if(s.match("\"?*\"")) {
      s.trim<1>("\"");
      s = {dir(sourceFilenames.last()), s};
      if(!file::exists(s)) error("arch file ", s, " not found");
      data = file::read(s);
    } else {
      error("unrecognized arch ", s);
    }
    table.reset();
    parseTable(data);
    return true;
  }

  if(s.match("instrument \"*\"")) {
    s.trim<1>("instrument \"", "\"");
    parseTable(s);
    return true;
  }

  unsigned pc = this->pc();

  for(auto& opcode : table) {
    if(tokenize(s, opcode.pattern) == false) continue;

    lstring args;
    tokenize(args, s, opcode.pattern);
    if(args.size() != opcode.number.size()) continue;

    bool mismatch = false;
    for(auto& format : opcode.format) {
      if(format.type == Format::Type::Absolute) {
        if(format.match != Format::Match::Weak) {
          unsigned bits = bitLength(args[format.argument]);
          if(bits != opcode.number[format.argument].bits) {
            if(format.match == Format::Match::Exact || bits != 0) {
              mismatch = true;
              break;
            }
          }
        }
      }
    }
    if(mismatch) continue;

    for(auto& format : opcode.format) {

      switch(format.type) {
        case Format::Type::Static: {
          writeBits(format.data, format.bits);
          break;
        }

        case Format::Type::Absolute: {
          unsigned data = evaluate(args[format.argument]);
          writeBits(data, opcode.number[format.argument].bits);
          break;
        }

        case Format::Type::Relative: {
          signed data = evaluate(args[format.argument]) - (pc + format.displacement);
          unsigned bits = opcode.number[format.argument].bits;
          signed min = -(1 << (bits - 1)), max = +(1 << (bits - 1)) - 1;
          if(data < min || data > max) error("branch out of bounds");
          writeBits(data, opcode.number[format.argument].bits);
          break;
        }

        case Format::Type::Repeat: {
          unsigned data = evaluate(args[format.argument]);
          for(unsigned n = 0; n < data; n++) {
            writeBits(format.data, opcode.number[format.argument].bits);
          }
          break;
        }

        case Format::Type::ShiftRight: {
          uint64_t data = evaluate(args[format.argument]);
          writeBits(data >> format.data, opcode.number[format.argument].bits);
          break;
        }

        case Format::Type::ShiftLeft: {
          uint64_t data = evaluate(args[format.argument]);
          writeBits(data << format.data, opcode.number[format.argument].bits);
          break;
        }

        case Format::Type::RelativeShiftRight: {
          int data = evaluate(args[format.argument]) - (pc + format.displacement);
          unsigned bits = opcode.number[format.argument].bits;
          int min = -(1 << (bits - 1)), max = +(1 << (bits - 1)) - 1;
          if(data < min || data > max) error("branch out of bounds");
          bits -= format.data;
          if (endian == Endian::LSB) {
            writeBits(data >> format.data, bits);
          } else {
            data >>= format.data;
            writeBits(swapEndian(data, bits), bits);
          }
          break;
        }

        case Format::Type::Negative: {
          unsigned data = evaluate(args[format.argument]);
          writeBits(-data, opcode.number[format.argument].bits);
          break;
        }

        case Format::Type::NegativeShiftRight: {
          uint64_t data = evaluate(args[format.argument]);
          writeBits(-data >> format.data, opcode.number[format.argument].bits);
          break;
        }
      }
    }

    return true;
  }

  return false;
}

unsigned BassTable::bitLength(string& text) const {
  auto binLength = [&](const char* p) -> unsigned {
    unsigned length = 0;
    while(*p) {
      if(*p == '0' || *p == '1') { p++; length += 1; continue; }
      return 0;
    }
    return length;
  };

  auto hexLength = [&](const char* p) -> unsigned {
    unsigned length = 0;
    while(*p) {
      if(*p >= '0' && *p <= '9') { p++; length += 4; continue; }
      if(*p >= 'a' && *p <= 'f') { p++; length += 4; continue; }
      if(*p >= 'A' && *p <= 'F') { p++; length += 4; continue; }
      return 0;
    }
    return length;
  };

  if(text[0] == '<') { text[0] = ' '; return  8; }
  if(text[0] == '>') { text[0] = ' '; return 16; }
  if(text[0] == '^') { text[0] = ' '; return 24; }
  if(text[0] == '?') { text[0] = ' '; return 32; }
  if(text[0] == ':') { text[0] = ' '; return 64; }
  if(text[0] == '%') return binLength((const char*)text + 1);
  if(text[0] == '$') return hexLength((const char*)text + 1);
  if(text[0] == '0' && text[1] == 'b') return binLength((const char*)text + 2);
  if(text[0] == '0' && text[1] == 'x') return hexLength((const char*)text + 2);
  return 0;
}

void BassTable::writeBits(uint64_t data, unsigned length) {
  function<uint64_t(unsigned)> setBits = [&](unsigned n) -> uint64_t {
    // Create a bit mask with the n least significant bits set
    if(n == 0){
      return 0;
    }
    n--;
    return (1<<n) | setBits(n);
  };
  bitval <<= length;
  bitval |= data & setBits(length);
  bitpos += length;

  while(bitpos >= 8) {
    write(bitval);
    bitval >>= 8;
    bitpos -= 8;
  }
}

bool BassTable::parseTable(const string& text) {
  lstring lines = text.split("\n");
  for(auto& line : lines) {
    if(auto position = line.find("//")) line.resize(position());  //remove comments
    lstring part = line.split<1>(";").strip();
    if(part.size() != 2) continue;

    Opcode opcode;
    assembleTableLHS(opcode, part(0));
    assembleTableRHS(opcode, part(1));
    table.append(opcode);
  }

  return true;
}

void BassTable::assembleTableLHS(Opcode& opcode, const string& text) {
  unsigned offset = 0;

  auto length = [&] {
    unsigned length = 0;
    while(text[offset + length]) {
      char n = text[offset + length];
      if(n == '*') break;
      length++;
    }
    return length;
  };

  while(text[offset]) {
    unsigned size = length();
    opcode.prefix.append({substr(text, offset, size), size});
    offset += size;

    if(text[offset] != '*') continue;
    unsigned bits = 10 * (text[offset + 1] - '0');
    bits += text[offset + 2] - '0';
    opcode.number.append({bits});
    offset += 3;
  }

  for(auto& prefix : opcode.prefix) {
    opcode.pattern.append(prefix.text, "*");
  }
  opcode.pattern.rtrim<1>("*");
  if(opcode.number.size() == opcode.prefix.size()) opcode.pattern.append("*");
}

void BassTable::assembleTableRHS(Opcode& opcode, const string& text) {
  unsigned offset = 0;

  lstring list = text.split(" ");
  for(auto& item : list) {
    if(item[0] == '$' && item.length() == 3) {
      Format format = {Format::Type::Static};
      format.data = hex((const char*)item + 1);
      format.bits = (item.length() - 1) * 4;
      opcode.format.append(format);
    }

    if(item[0] == '%') {
      Format format = {Format::Type::Static};
      format.data = binary((const char*)item + 1);
      format.bits = (item.length() - 1);
      opcode.format.append(format);
    }

    if(item[0] == '!') {
      Format format = {Format::Type::Absolute, Format::Match::Exact};
      if (item[1] >= 'A' && item[1] <= 'Z') item[1] += 123-'A';
      item[1] = item[1]-'a';
      format.argument = item[1];
      opcode.format.append(format);
    }

    if(item[0] == '=') {
      Format format = {Format::Type::Absolute, Format::Match::Strong};
      if (item[1] >= 'A' && item[1] <= 'Z') item[1] += 123-'A';
      item[1] = item[1]-'a';
      format.argument = item[1];
      opcode.format.append(format);
    }

    if(item[0] == '~') {
      Format format = {Format::Type::Absolute, Format::Match::Weak};
      if (item[1] >= 'A' && item[1] <= 'Z') item[1] += 123-'A';
      item[1] = item[1]-'a';
      format.argument = item[1];
      opcode.format.append(format);
    }

    if(item[0] == '+' && item[2] != '>') {
      Format format = {Format::Type::Relative};
      if (item[2] >= 'A' && item[2] <= 'Z') item[2] += 123-'A';
      item[2] = item[2]-'a';
      format.argument = item[2];
      format.displacement = +(item[1] - '0');
      opcode.format.append(format);
    }

    if(item[0] == '-') {
      Format format = {Format::Type::Relative};
      if (item[2] >= 'A' && item[2] <= 'Z') item[2] += 123-'A';
      item[2] = item[2]-'a';
      format.argument = item[2];
      format.displacement = -(item[1] - '0');
      opcode.format.append(format);
    }

    if(item[0] == '*') {
      Format format = {Format::Type::Repeat};
      if (item[1] >= 'A' && item[1] <= 'Z') item[1] += 123-'A';
      item[1] = item[1]-'a';
      format.argument = item[1];
      format.data = hex((const char*)item + 3);
      opcode.format.append(format);
    }
    
    // >>XXa
    if(item[0] == '>' && item[1] == '>') {
      Format format = {Format::Type::ShiftRight, Format::Match::Weak};
      if (item[4] >= 'A' && item[4] <= 'Z') item[4] += 123-'A';
      item[4] = item[4]-'a';
      format.argument = item[4];
      format.data = (item[2] - '0') * 10 + (item[3] - '0');
      opcode.format.append(format);
    }

    if(item[0] == '<' && item[1] == '<') {
      Format format = {Format::Type::ShiftLeft, Format::Match::Weak};
      if (item[4] >= 'A' && item[4] <= 'Z') item[4] += 123-'A';
      item[4] = item[4]-'a';
      format.argument = item[4];
      format.data = (item[2] - '0') * 10 + (item[3] - '0');
      opcode.format.append(format);
    }

    // +X>>YYa
    if(item[0] == '+' && item[2] == '>' && item[3] == '>') {
      Format format = {Format::Type::RelativeShiftRight, Format::Match::Weak};
      if (item[6] >= 'A' && item[6] <= 'Z') item[6] += 123-'A';
      item[6] = item[6]-'a';
      format.argument = item[6];
      format.displacement = +(item[1] - '0');
      format.data = (item[4] - '0') * 10 + (item[5] - '0');
      opcode.format.append(format);
    }

    // N>>XXa
    if(item[0] == 'N' && item[1] == '>' && item[2] == '>') {
      Format format = {Format::Type::NegativeShiftRight, Format::Match::Weak};
      if (item[5] >= 'A' && item[5] <= 'Z') item[5] += 123-'A';
      item[5] = item[5]-'a';
      format.argument = item[5];
      format.data = (item[3] - '0') * 10 + (item[4] - '0');
      opcode.format.append(format);
    }

    // Na
    if(item[0] == 'N' && item[1] != '>') {
      Format format = {Format::Type::Negative, Format::Match::Weak};
      if (item[1] >= 'A' && item[1] <= 'Z') item[1] += 123-'A';
      item[1] = item[1]-'a';
      format.argument = item[1];
      opcode.format.append(format);
    }
  }
}

uint64_t BassTable::swapEndian(uint64_t data, unsigned bits){
  int t_data = 0;
  switch((bits - 1) / 8) {
    case 3: { // 4 bytes
      t_data = ((data & 0xFF000000) >> 24) | \
               ((data & 0x00FF0000) >> 8) | \
               ((data & 0x0000FF00) << 8) | \
               ((data & 0x000000FF) << 24);
      break;
    }
    case 2: { // 3 bytes
      t_data = ((data & 0xFF0000) >> 16) | \
               ((data & 0x00FF00)) | \
               ((data & 0x0000FF) << 16);
      break;
    }
    case 1: { // 2 bytes
      t_data = ((data & 0xFF00) >> 8) | \
               ((data & 0x00FF) << 8);
      break;
    }
    case 0: { // byte
      t_data = data;
      break;
    }
    default: {
      error("Invalid number of bits for BassTable::swapEndian");
      break;
    }
  }
  return t_data;
}

// vim:sts=2 sw=2
