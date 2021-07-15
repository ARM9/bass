auto Bass::initialize() -> void {
  queue.reset();
  scope.reset();
  for(uint n : range(256)) stringTable[n] = n;
  endian = Endian::LSB;
  origin = 0;
  base = 0;
  lastLabelCounter = 1;
  nextLabelCounter = 1;
}

auto Bass::assemble(const string& statement) -> bool {
  string s = statement;

  if(s.match("block {")) return true;
  if(s.match("} endblock")) return true;

  //namespace name {
  if(s.match("namespace ?* {")) {
    s.trim("namespace ", "{", 1L).strip();
    if(!validate(s)) error("invalid namespace specifier: ", s);
    scope.append(s);
    return true;
  }

  //}
  if(s.match("} endnamespace")) {
    scope.removeRight();
    return true;
  }

  //function name {
  if(s.match("function ?* {")) {
    s.trim("function ", "{", 1L).strip();
    setConstant(s, pc());
    scope.append(s);
    return true;
  }

  //}
  if(s.match("} endfunction")) {
    scope.removeRight();
    return true;
  }

  //constant name(value)
  if(s.match("constant ?*")) {
    auto p = s.trimLeft("constant ", 1L).split("=", 1L).strip();
    setConstant(p(0), evaluate(p(1)));
    return true;
  }

  //label: or label: {
  if(s.match("?*:") || s.match("?*: {")) {
    s.trimRight(" {", 1L);
    s.trimRight(":", 1L);
    setConstant(s, pc());
    return true;
  }

  //- or - {
  if(s.match("-") || s.match("- {")) {
    setConstant({"lastLabel#", lastLabelCounter++}, pc());
    return true;
  }

  //+ or + {
  if(s.match("+") || s.match("+ {")) {
    setConstant({"nextLabel#", nextLabelCounter++}, pc());
    return true;
  }

  //}
  if(s.match("} endconstant")) {
    return true;
  }

  //output "filename" [, create]
  if(s.match("output ?*")) {
    auto p = split(s.trimLeft("output ", 1L));
    if(!p(0).match("\"*\"")) error("missing filename");
    string filename = {filepath(), text(p.take(0))};
    bool create = (p.size() && p(0) == "create");
    target(filename, create);
    return true;
  }

  //architecture name
  if(s.match("architecture ?*") || s.match("arch ?*")) {
    s.trimLeft("architecture ", 1L);
    s.trimLeft("arch ", 1L);

    if(s == "none") architecture = new Architecture{*this};
    else {
      architecture = new Table{*this, readArchitecture(s)};
    }
    return true;
  }

  //endian (lsb|msb)
  if(s.match("endian ?*")) {
    s.trimLeft("endian ", 1L);
    if(s == "lsb") { endian = Endian::LSB; return true; }
    if(s == "msb") { endian = Endian::MSB; return true; }
    error("invalid endian mode");
  }

  //origin offset
  if(s.match("origin ?*")) {
    s.trimLeft("origin ", 1L);
    origin = evaluate(s);
    seek(origin);
    return true;
  }

  //base offset
  if(s.match("base ?*")) {
    s.trimLeft("base ", 1L);
    base = evaluate(s) - origin;
    return true;
  }

  //enqueue variable [, ...]
  if(s.match("enqueue ?*")) {
    auto p = split(s.trimLeft("enqueue ", 1L));
    for(auto& t : p) {
      if(t == "origin") {
        queue.append(origin);
      } else if(t == "base") {
        queue.append(base);
      } else if(t == "pc") {
        queue.append(origin);
        queue.append(base);
      } else {
        error("unrecognized enqueue variable: ", t);
      }
    }
    return true;
  }

  //dequeue variable [, ...]
  if(s.match("dequeue ?*")) {
    auto p = split(s.trimLeft("dequeue ", 1L));
    for(auto& t : p) {
      if(t == "origin") {
        origin = queue.takeRight().natural();
        seek(origin);
      } else if(t == "base") {
        base = queue.takeRight().integer();
      } else if(t == "pc") {
        base = queue.takeRight().integer();
        origin = queue.takeRight().natural();
        seek(origin);
      } else {
        error("unrecognized dequeue variable: ", t);
      }
    }
    return true;
  }

  //copy source, target, length
  if(s.match("copy ?*")) {
    auto p = split(s.trimLeft("copy ", 1L));
    if(p.size() == 3) {
      auto origin = targetFile.offset();
      auto source = evaluate(p(0));
      auto target = evaluate(p(1));
      auto length = evaluate(p(2));
      vector<u8> memory;
      memory.resize(length);
      targetFile.seek(source);
      targetFile.read(memory);
      targetFile.seek(target);
      for(uint offset : range(length)) write(memory[offset]);
      targetFile.seek(origin);
      return true;
    }
  }

  //insert [name, ] filename [, offset] [, length]
  if(s.match("insert ?*")) {
    auto p = split(s.trimLeft("insert ", 1L));
    string name;
    if(!p(0).match("\"*\"")) name = p.take(0);
    if(!p(0).match("\"*\"")) error("missing filename");
    string filename = {filepath(), text(p.take(0))};
    auto fp = file::open(filename, file::mode::read);
    if(!fp) error("file not found: ", filename);
    uint offset = p.size() ? evaluate(p.take(0)) : 0;
    if(offset > fp.size()) offset = fp.size();
    uint length = p.size() ? evaluate(p.take(0)) : 0;
    if(length == 0) length = fp.size() - offset;
    if(name) {
      setConstant({name}, pc());
      setConstant({name, ".size"}, length);
    }
    fp.seek(offset);
    while(!fp.end() && length--) write(fp.read());
    return true;
  }

  //delete filename
  if(s.match("delete ?*")) {
    auto p = split(s.trimLeft("delete ", 1L));
    if(!p(0).match("\"*\"")) error("missing filename");
    string filename = {filepath(), text(p.take(0))};
    if(!file::exists(filename)) {
      warning("file not found: ", filename);
      return true;
    }
    if(!file::remove(filename)) {
      warning("unable to delete file: ", filename);
      return true;
    }
    return true;
  }

  //fill length [, with]
  if(s.match("fill ?*")) {
    auto p = split(s.trimLeft("fill ", 1L));
    uint length = evaluate(p(0));
    uint byte = evaluate(p(1, "0"));
    while(length--) write(byte);
    return true;
  }

  //map 'char' [, value] [, length]
  if(s.match("map ?*")) {
    auto p = split(s.trimLeft("map ", 1L));
    uint8_t index = evaluate(p(0));
    int64_t value = evaluate(p(1, "0"));
    int64_t length = evaluate(p(2, "1"));
    for(int n : range(length)) {
      stringTable[index + n] = value + n;
    }
    return true;
  }

  //d[bwldq] ("string"|variable) [, ...]
  uint dataLength = 0;
  if(s.beginsWith("db ")) dataLength = 1;
  if(s.beginsWith("dw ")) dataLength = 2;
  if(s.beginsWith("dl ")) dataLength = 3;
  if(s.beginsWith("dd ")) dataLength = 4;
  if(s.beginsWith("dq ")) dataLength = 8;
  if(dataLength) {
    s = slice(s, 3);  //remove prefix
    auto p = split(s);
    for(auto& t : p) {
      if(t.match("\"*\"")) {
        t = text(t);
        for(auto& b : t) write(stringTable[b], dataLength);
      } else {
        write(evaluate(t), dataLength);
      }
    }
    return true;
  }

  //ds amount
  if(s.match("ds ?*")) {
    s.trimLeft("ds ", 1L);
    origin += evaluate(s);
    seek(origin);
    return true;
  }

  //tracker enable|disable|reset
  if(s.match("tracker ?*")) {
    s.trimLeft("tracker ", 1L).strip();
    if(s == "enable") {
      if(writePhase()) tracker.enable = true;
      return true;
    }
    if(s == "disable") {
      if(writePhase()) tracker.enable = false;
      return true;
    }
    if(s == "reset") {
      if(writePhase()) tracker.addresses.reset();
      return true;
    }
  }

  //print ("string"|[cast:]variable) [, ...]
  if(s.match("print ?*")) {
    if(writePhase()) {
      s.trimLeft("print ", 1L).strip();
      print(stderr, assembleString(s));
    }
    return true;
  }

  //notice ("string"|[cast:]variable) [, ...]
  if(s.match("notice ?*")) {
    if(writePhase()) {
      s.trimLeft("notice ", 1L).strip();
      notice(assembleString(s));
    }
    return true;
  }

  //warning ("string"|[cast:]variable) [, ...]
  if(s.match("warning ?*")) {
    if(writePhase()) {
      s.trimLeft("warning ", 1L).strip();
      warning(assembleString(s));
    }
    return true;
  }

  //error ("string"|[cast:]variable) [, ...]
  if(s.match("error ?*")) {
    if(writePhase()) {
      s.trimLeft("error ", 1L).strip();
      error(assembleString(s));
    }
    return true;
  }

  charactersUseMap = true;
  bool result = architecture->assemble(statement);
  charactersUseMap = false;
  return result;
}

auto Bass::assembleString(const string& parameters) -> string {
  string result;
  auto p = split(parameters);
  for(auto& t : p) {
    if(t.match("\"*\"")) {
      result.append(text(t));
    } else if(t.match("binary:?*")) {
      t.trimLeft("binary:", 1L);
      result.append(binary(evaluate(t)));
    } else if(t.match("hex:?*")) {
      t.trimLeft("hex:", 1L);
      result.append(hex(evaluate(t)));
    } else if(t.match("char:?*")) {
      t.trimLeft("char:", 1L);
      result.append((char)evaluate(t));
    } else {
      result.append(evaluate(t));
    }
  }
  return result;
}
