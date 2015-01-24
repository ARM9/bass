bool Bass::execute() {
  stackFrame.reset();
  ifStack.reset();
  ip = 0;
  macroInvocationCounter = 0;

  initialize();

  StackFrame frame;
  stackFrame.append(frame);
  for(auto& define : defines) {
    setDefine(define.name, define.value, true);
  }

  while(ip < program.size()) {
    Instruction& i = program(ip++);
    if(!executeInstruction(i)) error("unrecognized directive: ", i.statement);
  }

  stackFrame.remove();
  return true;
}

bool Bass::executeInstruction(Instruction& i) {
  activeInstruction = &i;
  string s = i.statement;
  evaluateDefines(s);

  if(s.match("macro ?*(*) {") || s.match("global macro ?*(*) {")) {
    bool local = s.beginsWith("global ") == false;
    s.ltrim<1>("global ");
    s.trim<1>("macro ", ") {");
    lstring p = s.split<1>("(");
    bool scoped = p(0).beginsWith("scope ");
    p(0).ltrim<1>("scope ");
    lstring a = p(1).empty() ? lstring{} : p(1).qsplit(",").strip();
    setMacro(p(0), a, ip, scoped, local);
    ip = i.ip;
    return true;
  }

  if(s.match("define ?*(*)") || s.match("global define ?*(*)")) {
    bool local = s.beginsWith("global ") == false;
    s.ltrim<1>("global ");
    lstring p = s.trim<1>("define ", ")").split<1>("(");
    setDefine(p(0), p(1), local);
    return true;
  }

  if(s.match("evaluate ?*(*)") || s.match("global evaluate ?*(*)")) {
    bool local = s.beginsWith("global ") == false;
    s.ltrim<1>("global ");
    lstring p = s.trim<1>("evaluate ", ")").split<1>("(");
    setDefine(p(0), evaluate(p(1)), local);
    return true;
  }

  if(s.match("variable ?*(*)") || s.match("global variable ?*(*)")) {
    bool local = s.beginsWith("global ") == false;
    s.ltrim<1>("global ");
    lstring p = s.trim<1>("variable ", ")").split<1>("(");
    setVariable(p(0), evaluate(p(1)), local);
    return true;
  }

  if(s.match("if ?* {")) {
    s.trim<1>("if ", " {").strip();
    bool match = evaluate(s, Evaluation::Strict);
    ifStack.append(match);
    if(match == false) {
      ip = i.ip;
    }
    return true;
  }

  if(s.match("} else if ?* {")) {
    if(ifStack.last()) {
      ip = i.ip;
    } else {
      s.trim<1>("} else if ", " {").strip();
      bool match = evaluate(s, Evaluation::Strict);
      ifStack.last() = match;
      if(match == false) {
        ip = i.ip;
      }
    }
    return true;
  }

  if(s.match("} else {")) {
    if(ifStack.last()) {
      ip = i.ip;
    } else {
      ifStack.last() = true;
    }
    return true;
  }

  if(s.match("} endif")) {
    ifStack.removeLast();
    return true;
  }

  if(s.match("while ?* {")) {
    s.trim<1>("while ", " {").strip();
    bool match = evaluate(s, Evaluation::Strict);
    if(match == false) ip = i.ip;
    return true;
  }

  if(s.match("} endwhile")) {
    ip = i.ip;
    return true;
  }

  if(s.match("?*(*)")) {
    lstring p = string{s}.rtrim<1>(")").split<1>("(");
    lstring a = p(1).empty() ? lstring{} : p(1).qsplit(",").strip();
    string name = {p(0), ":", a.size()};  //arity overloading
    if(auto macro = findMacro({name})) {
      struct Parameter {
        enum class Type : unsigned { Define, Variable } type;
        string name;
        string value;
      };

      vector<Parameter> parameters;
      for(unsigned n = 0; n < a.size(); n++) {
        lstring p = macro().parameters(n).split<1>(" ").strip();
        if(p.size() == 1) p.prepend("define");

        if(p(0) == "define") parameters.append({Parameter::Type::Define, p(1), a(n)});
        else if(p(0) == "string") parameters.append({Parameter::Type::Define, p(1), text(a(n))});
        else if(p(0) == "evaluate") parameters.append({Parameter::Type::Define, p(1), evaluate(a(n))});
        else if(p(0) == "variable") parameters.append({Parameter::Type::Variable, p(1), evaluate(a(n))});
        else error("unsupported parameter type: ", p(0));
      }

      StackFrame frame;
      stackFrame.append(frame);
      stackFrame.last().ip = ip;
      stackFrame.last().scoped = macro().scoped;

      if(macro().scoped) {
        scope.append(p(0));
      }

      setDefine("#", {"_", macroInvocationCounter++}, true);
      for(auto& parameter : parameters) {
        if(parameter.type == Parameter::Type::Define) setDefine(parameter.name, parameter.value, true);
        if(parameter.type == Parameter::Type::Variable) setVariable(parameter.name, integer(parameter.value), true);
      }

      ip = macro().ip;
      return true;
    }
  }

  if(s.match("} endmacro")) {
    ip = stackFrame.last().ip;
    if(stackFrame.last().scoped) scope.removeLast();
    stackFrame.removeLast();
    return true;
  }

  if(assemble(s)) {
    return true;
  }

  evaluate(s);
  return true;
}
