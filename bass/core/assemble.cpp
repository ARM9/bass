void Bass::initialize() {
  pushStack.reset();
  scope.reset();
  for(unsigned n = 0; n < 256; n++) stringTable[n] = n;
  endian = Endian::LSB;
  origin = 0;
  base = 0;
  lastLabelCounter = 1;
  nextLabelCounter = 1;
  TABLE_PAIR tp;
  for(unsigned int n = 1; n < 256; n++){
    sprintf(tp.symbol, "%c", n);
	tp.value = n;
	vTable.push_back(tp);
  }
}

unsigned int Bass::grabValFromString(const char* s, int* sz){
	
  int n = vTable.size();
  int szMax = 0;
  int indexMax = 0;
  int sl = 0;
  
  for(int i = 0; i < n; i++){
	  
	sl = strlen(vTable[i].symbol);
	
    if(!strncmp(vTable[i].symbol, s, sl)){
		
		if(sl > szMax){
		  szMax = sl;
		  indexMax = i;
		}
		
	}

  }
  
  if(szMax){
	  *sz = szMax;
	  return vTable[indexMax].value;
  }
  else{
	  *sz = 1;
	  return 0;
  }
}

void Bass::UpdateIndex(const char* s, unsigned int value){
	
  int n = vTable.size();
  
  for(int i = 0; i < n; i++){
	  
    if(!strcmp(vTable[i].symbol, s)){
		
		vTable[i].value = value;
		return;
		
	}
	
  }
 
  TABLE_PAIR tp;
  tp.value = value;
  strcpy(tp.symbol, s);
  vTable.push_back(tp);
  
}

bool Bass::assemble(const string& statement) {
  string s = statement;

  if(s.match("block {")) return true;
  if(s.match("} endblock")) return true;

  //constant name(value)
  if(s.match("constant ?*(*)")) {
    lstring p = s.trim<1>("constant ", ")").split<1>("(");
    setConstant(p(0), evaluate(p(1)));
    return true;
  }

  //scope name {
  if(s.match("scope ?* {") || s.match("scope {")) {
    s.trim<1>("scope ", "{").strip();
    if(s.endsWith(":")) {
      setConstant(s.rtrim<1>(":"), pc());
      appendSymfile(s, pc());
    }
    if(s) validateName(s);
    scope.append(s);
    return true;
  }

  //}
  if(s.match("} endscope")) {
    scope.removeLast();
    return true;
  }

  //label: or label: {
  if(s.match("?*:") || s.match("?*: {")) {
    s.rtrim<1>(" {");
    s.rtrim<1>(":");
    setConstant(s, pc());
    appendSymfile(s, pc());
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
    lstring p = s.ltrim<1>("output ").qsplit(",").strip();
    string filename = {filepath(), p.take(0).trim<1>("\"")};
    if(filename != ".//dev/null") {
      bool create = (p.size() && p(0) == "create");
      target(filename, create);
    }else{
      #if defined(_WIN32)
      target("./NUL", false);
      #else
      target("/dev/null", false);
      #endif
    }
    return true;
  }

  //endian (lsb|msb)
  if(s.match("endian ?*")) {
    s.ltrim<1>("endian ");
    if(s == "lsb") { endian = Endian::LSB; return true; }
    if(s == "msb") { endian = Endian::MSB; return true; }
    error("invalid endian mode");
  }

  //origin offset
  if(s.match("origin ?*")) {
    s.ltrim<1>("origin ");
    origin = evaluate(s);
    seek(origin);
    return true;
  }

  //base offset
  if(s.match("base ?*")) {
    s.ltrim<1>("base ");
    base = evaluate(s) - origin;
    return true;
  }

  //push variable [, ...]
  if(s.match("pushvar ?*")) {
    lstring p = s.ltrim<1>("pushvar ").qsplit(",").strip();
    for(auto& t : p) {
      if(t == "origin") {
        pushStack.append(origin);
      } else if(t == "base") {
        pushStack.append(base);
      } else if(t == "pc") {
        pushStack.append(origin);
        pushStack.append(base);
      } else {
        error("unrecognized push variable: ", t);
      }
    }
    return true;
  }

  //pull variable [, ...]
  if(s.match("pullvar ?*")) {
    lstring p = s.ltrim<1>("pullvar ").qsplit(",").strip();
    for(auto& t : p) {
      if(t == "origin") {
        origin = decimal(pushStack.takeLast());
        seek(origin);
      } else if(t == "base") {
        base = integer(pushStack.takeLast());
      } else if(t == "pc") {
        base = integer(pushStack.takeLast());
        origin = decimal(pushStack.takeLast());
        seek(origin);
      } else {
        error("unrecognized pull variable: ", t);
      }
    }
    return true;
  }

  //insert [name, ] filename [, offset] [, length]
  if(s.match("insert ?*")) {
    lstring p = s.ltrim<1>("insert ").qsplit(",").strip();
    string name;
    if(!p(0).match("\"*\"")) name = p.take(0);
    if(!p(0).match("\"*\"")) error("missing filename");
    string filename = {filepath(), p.take(0).trim<1>("\"")};
    file fp;
    if(!fp.open(filename, file::mode::read)) error("file not found: ", filename);
    unsigned offset = p.size() ? evaluate(p.take(0)) : 0;
    if(offset > fp.size()) offset = fp.size();
    unsigned length = p.size() ? evaluate(p.take(0)) : 0;
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
    lstring p = s.ltrim<1>("fill ").qsplit(",").strip();
    unsigned length = evaluate(p(0));
    unsigned byte = evaluate(p(1, "0"));
    while(length--) write(byte);
    return true;
  }

  //map 'char' [, value] [, length]
  if(s.match("map ?*")) {
    lstring p = s.ltrim<1>("map ").qsplit(",").strip();
    uint8_t index = evaluate(p(0));
    int64_t value = evaluate(p(1, "0"));
    int64_t length = evaluate(p(2, "1"));
    for(signed n = 0; n < length; n++) {
      stringTable[index + n] = value + n;
    }
    return true;
  }
  
  if(s.match("table ?*")) {
	char line[128];
	lstring p = s.ltrim<1>("table ").qsplit(",").strip();
	sprintf(line, "%s", p.take(0).trim<1>("\"").data());
	FILE* h = fopen(line, "r");
	if(!h){
		printf("can't open table file [%s]\n", line);
		exit(1);
	}
	int64_t value;
	char index[64];
	
	while(fgets(line, sizeof(line), h)){
		
		sscanf(line, "%x=%[^\n]", &value, index);
		UpdateIndex(index, value);
	}
	
	fclose(h);
    return true;
  }

  //d[bwldq] ("string"|variable) [, ...]
  {
    unsigned dataLength = 0;
    unsigned tokenLength = 0;
	int sz = 0;
    for(auto& d : directives.EmitBytes) {
      if(s.beginsWith(d.token)) {
        dataLength = d.dataLength;
        tokenLength = d.token.length();
        break;
      }
    }
    if(dataLength) {
      s = s.slice(tokenLength);  //remove prefix
      lstring p = s.qsplit(",").strip();
      for(auto& t : p) {
        if(t.match("\"*\"")) {
          t = text(t);
		  std::string s = "";
		  for(auto& b : t) s += b;
		  for(int i = 0; i < strlen(s.c_str()); i++){
			  unsigned int val = grabValFromString(&s[i], &sz);
			  write(val, dataLength);
			  i += sz - 1;
		  }
        } else {
          write(evaluate(t), dataLength);
        }
      }
      return true;
    }
  }

  if(s.beginsWith("float32 ")) {
    s = s.slice(8);  //remove directive
    lstring p = s.qsplit(",").strip();
    for(auto& t : p) {
      /*if(!t.match("")) {
        error("invalid single precision float");
      }*/
      uint64_t data;
      *(float*)&data = atof(t);
      write(data, 4);
    }
    return true;
  }
  if(s.beginsWith("float64 ")) {
    s = s.slice(8);  //remove directive
    lstring p = s.qsplit(",").strip();
    for(auto& t : p) {
      /*if(!t.match("")) {
        error("invalid double precision float");
      }*/
      uint64_t data;
      *(double*)&data = atof(t);
      write(data, 8);
    }
    return true;
  }

  //print ("string"|variable) [, ...]
  if(s.match("print ?*")) {
    s.ltrim<1>("print ").strip();
    if(writePhase()) {
      lstring p = s.qsplit(",").strip();
      for(auto& t : p) {
        if(t.match("\"*\"")) {
          print(text(t));
        } else {
          print(evaluate(t));
        }
      }
    }
    return true;
  }

  //notice "string"
  if(s.match("notice \"*\"")) {
    if(writePhase()) {
      s.ltrim<1>("notice ").strip();
      notice(text(s));
    }
    return true;
  }

  //warning "string"
  if(s.match("warning \"*\"")) {
    if(writePhase()) {
      s.ltrim<1>("warning ").strip();
      warning(text(s));
    }
    return true;
  }

  //error "string"
  if(s.match("error \"*\"")) {
    if(writePhase()) {
      s.ltrim<1>("error ").strip();
      error(text(s));
    }
    return true;
  }

  return false;
}

// vim:sts=2 sw=2
