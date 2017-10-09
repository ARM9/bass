auto Bass::execute() -> bool {
  frames.reset();
  conditionals.reset();
  ip = 0;
  macroInvocationCounter = 0;

  initialize();

  frames.append({0, false});
  for(auto& define : defines) {
    setDefine(define.name, {}, define.value, Frame::Level::Inline);
  }

  while(ip < program.size()) {
    Instruction& i = program(ip++);
    if(!executeInstruction(i)) error("unrecognized directive: ", i.statement);
  }

  frames.removeRight();
  return true;
}

auto Bass::executeInstruction(Instruction& i) -> bool {
  activeInstruction = &i;
  string s = i.statement;
  evaluateDefines(s);

  bool global = s.beginsWith("global ");
  bool parent = s.beginsWith("parent ");
  if(global && parent) error("multiple frame specifiers are not allowed");

  Frame::Level level = Frame::Level::Active;
  if(global) s.trimLeft("global ", 1L), level = Frame::Level::Global;
  if(parent) s.trimLeft("parent ", 1L), level = Frame::Level::Parent;

  if(s.match("macro ?*(*) {")) {
    bool inlined = false;
    s.trim("macro ", ") {", 1L);
    auto p = s.split("(", 1L).strip();
    auto parameters = split(p(1));
    setMacro(p(0), parameters, ip, inlined, level);
    ip = i.ip;
    return true;
  }

  if(s.match("inline ?*(*) {")) {
    bool inlined = true;
    s.trim("inline ", ") {", 1L);
    auto p = s.split("(", 1L).strip();
    auto parameters = split(p(1));
    setMacro(p(0), parameters, ip, inlined, level);
    ip = i.ip;
    return true;
  }

  if(s.match("define ?*(*)*")) {
    auto e = s.trimLeft("define ", 1L).split("=", 1L).strip();
    auto p = e(0).trimRight(")", 1L).split("(", 1L).strip();
    auto parameters = split(p(1));
    setDefine(p(0), parameters, e(1), level);
    return true;
  }

  if(s.match("define ?*")) {
    auto p = s.trimLeft("define ", 1L).split("=", 1L).strip();
    setDefine(p(0), {}, p(1), level);
    return true;
  }

  if(s.match("evaluate ?*")) {
    auto p = s.trimLeft("evaluate ", 1L).split("=", 1L).strip();
    setDefine(p(0), {}, evaluate(p(1)), level);
    return true;
  }

  if(s.match("expression ?*(*)*")) {
    auto e = s.trimLeft("expression ", 1L).split("=", 1L).strip();
    auto p = e(0).trimRight(")", 1L).split("(", 1L).strip();
    auto parameters = split(p(1));
    setExpression(p(0), parameters, e(1), level);
    return true;
  }

  if(s.match("variable ?*")) {
    auto p = s.trimLeft("variable ", 1L).split("=", 1L).strip();
    setVariable(p(0), evaluate(p(1)), level);
    return true;
  }

  if(global || parent) error("invalid frame specifier");

  if(s.match("if ?* {")) {
    s.trim("if ", " {", 1L).strip();
    bool match = evaluate(s, Evaluation::Strict);
    conditionals.append(match);
    if(match == false) {
      ip = i.ip;
    }
    return true;
  }

  if(s.match("} else if ?* {")) {
    if(conditionals.right()) {
      ip = i.ip;
    } else {
      s.trim("} else if ", " {", 1L).strip();
      bool match = evaluate(s, Evaluation::Strict);
      conditionals.right() = match;
      if(match == false) {
        ip = i.ip;
      }
    }
    return true;
  }

  if(s.match("} else {")) {
    if(conditionals.right()) {
      ip = i.ip;
    } else {
      conditionals.right() = true;
    }
    return true;
  }

  if(s.match("} endif")) {
    conditionals.removeRight();
    return true;
  }

  if(s.match("while ?* {")) {
    s.trim("while ", " {", 1L).strip();
    bool match = evaluate(s, Evaluation::Strict);
    if(match == false) ip = i.ip;
    return true;
  }

  if(s.match("} endwhile")) {
    ip = i.ip;
    return true;
  }

  if(s.match("?*(*)")) {
    auto p = string{s}.trimRight(")", 1L).split("(", 1L).strip();
    auto name = p(0);
    auto parameters = split(p(1));
    if(parameters) name.append("#", parameters.size());
    if(auto macro = findMacro({name})) {
      frames.append({ip, macro().inlined});
      if(!frames.right().inlined) scope.append(p(0));

      setDefine("#", {}, {"_", macroInvocationCounter++, "_"}, Frame::Level::Inline);
      for(uint n : range(parameters)) {
        auto p = macro().parameters(n).split(" ", 1L).strip();
        if(p.size() == 1) p.prepend("define");

        if(0);
        else if(p[0] == "define") setDefine(p[1], {}, parameters(n), Frame::Level::Inline);
        else if(p[0] == "string") setDefine(p[1], {}, text(parameters(n)), Frame::Level::Inline);
        else if(p[0] == "evaluate") setDefine(p[1], {}, evaluate(parameters(n)), Frame::Level::Inline);
        else if(p[0] == "variable") setVariable(p[1], evaluate(parameters(n)), Frame::Level::Inline);
        else error("unsupported parameter type: ", p[0]);
      }

      ip = macro().ip;
      return true;
    }
  }

  if(s.match("} endmacro") || s.match("} endinline")) {
    ip = frames.right().ip;
    if(!frames.right().inlined) scope.removeRight();
    frames.removeRight();
    return true;
  }

  if(assemble(s)) {
    return true;
  }

  evaluate(s);
  return true;
}
