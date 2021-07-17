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

  //If the current instruction is a movem, we check for the register list
  //and transform it to the bitmask format if needed.
  if(s.match("movem*")) {
    auto parameters = s.split(" ")(1); //The instruction minus the "movem" part.
    bool reverse = false; //If the instruction is saving the registers, the bits are reversed.
    string registerList; //The register list extracted from the instruction
    string newStatement = "movem"; //The converted statement

    if (s.size()<9) return true;

    //if there is size information, we keep it
    if (s.slice(5,2) == ".b") newStatement.append(".b");
    else if (s.slice(5,2) == ".w") newStatement.append(".w");
    else if (s.slice(5,2) == ".l") newStatement.append(".l");

    newStatement.append(" ");

    //Here we extract the register list based on the instruction
    //format. It could save or load the registers, and the order
    //is different in each case.
    if (parameters.match("*(a7)+*")) {
      registerList = parameters.split(",")(1);
      newStatement.append("(a7)+,#$");
    }
    else if (parameters.match("*-(a7)*")) {
      registerList = parameters.split(",")(0);
      reverse = true; //When we are saving the registers the bit order is reversed.
      newStatement.append("#$");
    }
    else return true;

    //If the register list starts with a "#", so the instruction is using
    //the native bitmask format and we do nothing. Otherwise we start to 
    //parse the register list.
    if (registerList[0] != '#') {
      unsigned int index = 0; //Pointer of the current char in the list
      unsigned short result = 0; //The bitmask that will be assembled

      //This while traverses all the chars in the register list. 
      while (index < registerList.size()) {
        //Each subsection of the list should start with a "d" for data registers
        //or "a" for addresses registers. 
        //In both case we can have single registers, with a "/" separating them,
        //like "d0/a4/d6", or a range, like "d0-d3/a3-a6". 
        //Regardless of the case, the code consider a range for all cases.
        if (registerList[index] == 'd') {
          unsigned char regNum = registerList[index+1] - '0'; //The register number
          unsigned char reg2Num = regNum; //The end of the range is the current register for now.
          if (regNum>7) return true; //We only have 7 data registers.

          //If there is an "-" separating the next register, need to update the range end (reg2Num)
          //and do all the checks for errors.
          if ((index+2<registerList.size()) && (registerList[index+2] == '-')) {
            if (index+4>=registerList.size()) return true;
            if (registerList[index+3] != 'd') return true;
            if ((index+5<registerList.size()) && (registerList[index+5] != '/')) return true;
            reg2Num = registerList[index+4] - '0';
            if ((reg2Num<=regNum) || (reg2Num>7)) return true;
            index+=3;
          }
          else if ((index+2<registerList.size()) && (registerList[index+2] != '/')) return true;

          //Here we add the bits for the range. If it was a single register than "regNum==reg2Num"
          //and the for will run a single time.
          for (int i=regNum; i<=reg2Num; i++) {
            result |= (1<<i); //The data bits are in the first 8 bits.
          }
        }//The logic for addresses registers are the same.
        else if (registerList[index] == 'a') {
          unsigned char regNum = registerList[index+1] - '0';
          unsigned char reg2Num = regNum;
          if (regNum>6) return true;

          if ((index+2<registerList.size()) && (registerList[index+2] == '-')) {
            if (index+4>=registerList.size()) return true;
            if (registerList[index+3] != 'a') return true;
            if ((index+5<registerList.size()) && (registerList[index+5] != '/')) return true;
            reg2Num = registerList[index+4] - '0';
            if ((reg2Num<=regNum) || (reg2Num>6)) return true;
            index+=3;
          }
          else if ((index+2<registerList.size()) && (registerList[index+2] != '/')) return true;

          for (int i=regNum; i<=reg2Num; i++) {
            result |= (1<<(i+8)); //The addresses bits are in bits 8-15
          }
        }
        else return true;

        index+=3;
      }

      //If it was saving the registers we need to reverse the bits.
      if (reverse) {
        unsigned short reverse_num = 0;

        for (int i = 0; i < 16; i++)
        {
            if((result & (1 << i)))
              reverse_num |= 1 << ((16 - 1) - i);  
        }
        result = reverse_num;
      }
      
      //Finishing the new statement assembling, adding the bitmask and final details.
      newStatement.append(hex(result));
      if (reverse) newStatement.append(",-(a7)");

      //Changing the instruction to the fixed native format.
      i.statement = newStatement;

      return true;
    }
  }
  

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
