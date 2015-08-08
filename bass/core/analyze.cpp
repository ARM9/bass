bool Bass::analyze() {
  blockStack.reset();
  ip = 0;

  while(ip < program.size()) {
    Instruction& i = program(ip++);
    if(!analyzeInstruction(i)) error("unrecognized directive: ", i.statement);
  }

  return true;
}

bool Bass::analyzeInstruction(Instruction& i) {
  string s = i.statement;

  if(s.match("}") && blockStack.empty()) {
    error("} without matching {\n", sourceFilenames[i.fileNumber], ":", i.lineNumber, ":", i.blockNumber);
  }

  if(s.match("{")) {
    blockStack.append({ip - 1, "block"});
    i.statement = "block {";
    return true;
  }

  if(s.match("}") && blockStack.last().type == "block") {
    blockStack.removeLast();
    i.statement = "} endblock";
    return true;
  }

  if(s.match("scope ?* {") || s.match("scope {")) {
    blockStack.append({ip - 1, "scope"});
    return true;
  }

  if(s.match("}") && blockStack.last().type == "scope") {
    blockStack.removeLast();
    i.statement = "} endscope";
    return true;
  }

  if(s.match("macro ?*(*) {")) {
    blockStack.append({ip - 1, "macro"});
    return true;
  }

  if(s.match("}") && blockStack.last().type == "macro") {
    unsigned rp = blockStack.last().ip;
    program[rp].ip = ip;
    blockStack.removeLast();
    i.statement = "} endmacro";
    return true;
  }

  if(s.match("?*: {") || s.match("- {") || s.match("+ {")) {
    blockStack.append({ip - 1, "constant"});
    return true;
  }

  if(s.match("}") && blockStack.last().type == "constant") {
    blockStack.removeLast();
    i.statement = "} endconstant";
    return true;
  }

  if(s.match("if ?* {")) {
    s.trim<1>("if ", " {");
    blockStack.append({ip - 1, "if"});
    return true;
  }

  if(s.match("} else if ?* {")) {
    s.trim<1>("} else if ", " {");
    unsigned rp = blockStack.last().ip;
    program[rp].ip = ip - 1;
    blockStack.last().ip = ip - 1;
    return true;
  }

  if(s.match("} else {")) {
    unsigned rp = blockStack.last().ip;
    program[rp].ip = ip - 1;
    blockStack.last().ip = ip - 1;
    return true;
  }

  if(s.match("}") && blockStack.last().type == "if") {
    unsigned rp = blockStack.last().ip;
    program[rp].ip = ip - 1;
    blockStack.removeLast();
    i.statement = "} endif";
    return true;
  }

  if(s.match("while ?* {")) {
    s.trim<1>("while ", " {");
    blockStack.append({ip - 1, "while"});
    return true;
  }

  if(s.match("}") && blockStack.last().type == "while") {
    unsigned rp = blockStack.last().ip;
    program[rp].ip = ip;
    blockStack.removeLast();
    i.statement = "} endwhile";
    i.ip = rp;
    return true;
  }

  return true;
}
