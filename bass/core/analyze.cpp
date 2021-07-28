auto Bass::analyze() -> bool {
  blocks.reset();
  ip = 0;

  while(ip < program.size()) {
    Instruction& i = program(ip++);
    if(!analyzeInstruction(i)) error("unrecognized directive: ", i.lineNumber, ": " i.statement);
  }

  return true;
}

auto Bass::analyzeInstruction(Instruction& i) -> bool {
  string s = i.statement;

  if(s.match("}") && !blocks) error("} without matching {\n", i.lineNumber, ": ", i.statement);

  if(s.match("{")) {
    blocks.append({ip - 1, "block"});
    i.statement = "block {";
    return true;
  }

  if(s.match("}") && blocks.right().type == "block") {
    blocks.removeRight();
    i.statement = "} endblock";
    return true;
  }

  if(s.match("namespace ?* {")) {
    blocks.append({ip - 1, "namespace"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "namespace") {
    blocks.removeRight();
    i.statement = "} endnamespace";
    return true;
  }

  if(s.match("function ?* {")) {
    blocks.append({ip - 1, "function"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "function") {
    blocks.removeRight();
    i.statement = "} endfunction";
    return true;
  }

  if(s.match("macro ?*(*) {")) {
    blocks.append({ip - 1, "macro"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "macro") {
    uint rp = blocks.right().ip;
    program[rp].ip = ip;
    blocks.removeRight();
    i.statement = "} endmacro";
    return true;
  }

  if(s.match("inline ?*(*) {")) {
    blocks.append({ip - 1, "inline"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "inline") {
    uint rp = blocks.right().ip;
    program[rp].ip = ip;
    blocks.removeRight();
    i.statement = "} endinline";
    return true;
  }

  if(s.match("?*: {") || s.match("- {") || s.match("+ {")) {
    blocks.append({ip - 1, "constant"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "constant") {
    blocks.removeRight();
    i.statement = "} endconstant";
    return true;
  }

  if(s.match("if ?* {")) {
    s.trim("if ", " {", 1L);
    blocks.append({ip - 1, "if"});
    return true;
  }

  if(s.match("} else if ?* {")) {
    s.trim("} else if ", " {", 1L);
    uint rp = blocks.right().ip;
    program[rp].ip = ip - 1;
    blocks.right().ip = ip - 1;
    return true;
  }

  if(s.match("} else {")) {
    uint rp = blocks.right().ip;
    program[rp].ip = ip - 1;
    blocks.right().ip = ip - 1;
    return true;
  }

  if(s.match("}") && blocks.right().type == "if") {
    uint rp = blocks.right().ip;
    program[rp].ip = ip - 1;
    blocks.removeRight();
    i.statement = "} endif";
    return true;
  }

  if(s.match("while ?* {")) {
    s.trim("while ", " {", 1L);
    blocks.append({ip - 1, "while"});
    return true;
  }

  if(s.match("}") && blocks.right().type == "while") {
    uint rp = blocks.right().ip;
    program[rp].ip = ip;
    blocks.removeRight();
    i.statement = "} endwhile";
    i.ip = rp;
    return true;
  }

  return true;
}
