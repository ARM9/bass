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
    string filename = {filepath(), p.take(0).trim("\"", "\"", 1L)};
    bool create = (p.size() && p(0) == "create");
    target(filename, create);
    return true;
  }

  //architecture name
  if(s.match("architecture ?*")) {
    s.trimLeft("architecture ", 1L);
    if(s == "none") architecture = new Architecture{*this};
    else {
      string location{Path::local(), "bass/architectures/", s, ".arch"};
      if(!file::exists(location)) location = {Path::program(), "architectures/", s, ".arch"};
      if(!file::exists(location)) error("unknown architecture: ", s);
      architecture = new Table{*this, string::read(location)};
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

  //insert [name, ] filename [, offset] [, length]
  if(s.match("insert ?*")) {
    auto p = split(s.trimLeft("insert ", 1L));
    string name;
    if(!p(0).match("\"*\"")) name = p.take(0);
    if(!p(0).match("\"*\"")) error("missing filename");
    string filename = {filepath(), p.take(0).trim("\"", "\"", 1L)};
    file fp;
    if(!fp.open(filename, file::mode::read)) error("file not found: ", filename);
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

  //print ("string"|[cast:]variable) [, ...]
  if(s.match("print ?*")) {
    s.trimLeft("print ", 1L).strip();
    if(writePhase()) {
      auto p = split(s);
      for(auto& t : p) {
        if(t.match("\"*\"")) {
          print(stderr, text(t));
        } else if(t.match("binary:?*")) {
          t.trimLeft("binary:", 1L);
          print(stderr, binary(evaluate(t)));
        } else if(t.match("hex:?*")) {
          t.trimLeft("hex:", 1L);
          print(stderr, hex(evaluate(t)));
        } else if(t.match("char:?*")) {
          t.trimLeft("char:", 1L);
          print(stderr, (char)evaluate(t));
        } else {
          print(stderr, evaluate(t));
        }
      }
    }
    return true;
  }

  //notice "string"
  if(s.match("notice \"*\"")) {
    if(writePhase()) {
      s.trimLeft("notice ", 1L).strip();
      notice(text(s));
    }
    return true;
  }

  //warning "string"
  if(s.match("warning \"*\"")) {
    if(writePhase()) {
      s.trimLeft("warning ", 1L).strip();
      warning(text(s));
    }
    return true;
  }

  //error "string"
  if(s.match("error \"*\"")) {
    if(writePhase()) {
      s.trimLeft("error ", 1L).strip();
      error(text(s));
    }
    return true;
  }

  return architecture->assemble(statement);
}
