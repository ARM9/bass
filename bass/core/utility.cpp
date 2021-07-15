auto Bass::setMacro(const string& name, const string_vector& parameters, uint ip, bool inlined, Frame::Level level) -> void {
  if(!validate(name)) error("invalid macro identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};
  if(parameters) scopedName.append("#", parameters.size());

  for(int n : reverse(range(frames.size()))) {
    if(level != Frame::Level::Inline) {
      if(frames[n].inlined) continue;
      if(level == Frame::Level::Global && n) { continue; }
      if(level == Frame::Level::Parent && n) { level = Frame::Level::Active; continue; }
    }

    auto& macros = frames[n].macros;
    if(auto macro = macros.find({scopedName})) {
      macro().parameters = parameters;
      macro().ip = ip;
      macro().inlined = inlined;
    } else {
      macros.insert({scopedName, parameters, ip, inlined});
    }

    return;
  }
}

auto Bass::findMacro(const string& name) -> maybe<Macro&> {
  for(int n : reverse(range(frames.size()))) {
    auto& macros = frames[n].macros;
    auto s = scope;
    while(true) {
      string scopedName = {s.merge("."), s ? "." : "", name};
      if(auto macro = macros.find({scopedName})) {
        return macro();
      }
      if(!s) break;
      s.removeRight();
    }
  }

  return nothing;
}

auto Bass::setDefine(const string& name, const string_vector& parameters, const string& value, Frame::Level level) -> void {
  if(!validate(name)) error("invalid define identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};
  if(parameters) scopedName.append("#", parameters.size());

  for(int n : reverse(range(frames.size()))) {
    if(level != Frame::Level::Inline) {
      if(frames[n].inlined) continue;
      if(level == Frame::Level::Global && n) { continue; }
      if(level == Frame::Level::Parent && n) { level = Frame::Level::Active; continue; }
    }

    auto& defines = frames[n].defines;
    if(auto define = defines.find({scopedName})) {
      define().parameters = parameters;
      define().value = value;
    } else {
      defines.insert({scopedName, parameters, value});
    }

    return;
  }
}

auto Bass::findDefine(const string& name) -> maybe<Define&> {
  for(int n : reverse(range(frames.size()))) {
    auto& defines = frames[n].defines;
    auto s = scope;
    while(true) {
      string scopedName = {s.merge("."), s ? "." : "", name};
      if(auto define = defines.find({scopedName})) {
        return define();
      }
      if(!s) break;
      s.removeRight();
    }
  }

  return nothing;
}

auto Bass::setExpression(const string& name, const string_vector& parameters, const string& value, Frame::Level level) -> void {
  if(!validate(name)) error("invalid expression identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};
  if(parameters) scopedName.append("#", parameters.size());

  for(int n : reverse(range(frames.size()))) {
    if(level != Frame::Level::Inline) {
      if(frames[n].inlined) continue;
      if(level == Frame::Level::Global && n) { continue; }
      if(level == Frame::Level::Parent && n) { level = Frame::Level::Active; continue; }
    }

    auto& expressions = frames[n].expressions;
    if(auto expression = expressions.find({scopedName})) {
      expression().parameters = parameters;
      expression().value = value;
    } else {
      expressions.insert({scopedName, parameters, value});
    }

    return;
  }
}

auto Bass::findExpression(const string& name) -> maybe<Expression&> {
  for(int n : reverse(range(frames.size()))) {
    auto& expressions = frames[n].expressions;
    auto s = scope;
    while(true) {
      string scopedName = {s.merge("."), s ? "." : "", name};
      if(auto expression = expressions.find({scopedName})) {
        return expression();
      }
      if(!s) break;
      s.removeRight();
    }
  }

  return nothing;
}

auto Bass::setVariable(const string& name, int64_t value, Frame::Level level) -> void {
  if(!validate(name)) error("invalid variable identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};

  for(int n : reverse(range(frames.size()))) {
    if(level != Frame::Level::Inline) {
      if(frames[n].inlined) continue;
      if(level == Frame::Level::Global && n) { continue; }
      if(level == Frame::Level::Parent && n) { level = Frame::Level::Active; continue; }
    }

    auto& variables = frames[n].variables;
    if(auto variable = variables.find({scopedName})) {
      variable().value = value;
    } else {
      variables.insert({scopedName, value});
    }

    return;
  }
}

auto Bass::findVariable(const string& name) -> maybe<Variable&> {
  for(int n : reverse(range(frames.size()))) {
    auto& variables = frames[n].variables;
    auto s = scope;
    while(true) {
      string scopedName = {s.merge("."), s ? "." : "", name};
      if(auto variable = variables.find({scopedName})) {
        return variable();
      }
      if(!s) break;
      s.removeRight();
    }
  }

  return nothing;
}

auto Bass::setConstant(const string& name, int64_t value) -> void {
  if(!validate(name)) error("invalid constant identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};

  if(auto constant = constants.find({scopedName})) {
    if(queryPhase()) error("constant cannot be modified: ", scopedName);
    constant().value = value;
  } else {
    constants.insert({scopedName, value});
  }
}

auto Bass::findConstant(const string& name) -> maybe<Constant&> {
  auto s = scope;
  while(true) {
    string scopedName = {s.merge("."), s ? "." : "", name};
    if(auto constant = constants.find({scopedName})) {
      return constant();
    }
    if(!s) break;
    s.removeRight();
  }

  return nothing;
}

auto Bass::setArray(const string& name, const vector<int64_t>& values, Frame::Level level) -> void {
  if(!validate(name)) error("invalid array identifier: ", name);
  string scopedName = {scope.merge("."), scope ? "." : "", name};

  for(int n : reverse(range(frames.size()))) {
    if(level != Frame::Level::Inline) {
      if(frames[n].inlined) continue;
      if(level == Frame::Level::Global && n) { continue; }
      if(level == Frame::Level::Parent && n) { level = Frame::Level::Active; continue; }
    }

    auto& arrays = frames[n].arrays;
    if(auto array = arrays.find({scopedName})) {
      array().values = values;
    } else {
      arrays.insert({scopedName, values});
    }

    return;
  }
}

auto Bass::findArray(const string& name) -> maybe<Array&> {
  for(int n : reverse(range(frames.size()))) {
    auto& arrays = frames[n].arrays;
    auto s = scope;
    while(true) {
      string scopedName = {s.merge("."), s ? "." : "", name};
      if(auto array = arrays.find({scopedName})) {
        return array();
      }
      if(!s) break;
      s.removeRight();
    }
  }

  return nothing;
}

auto Bass::evaluateDefines(string& s) -> void {
  for(int x = s.size() - 1, y = -1; x >= 0; x--) {
    if(s[x] == '}') y = x;
    if(s[x] == '{' && y > x) {
      string name = slice(s, x + 1, y - x - 1);

      if(name.match("defined ?*")) {
        name.trimLeft("defined ", 1L).strip();
        s = {slice(s, 0, x), findDefine(name) ? 1 : 0, slice(s, y + 1)};
        return evaluateDefines(s);
      }

      string_vector parameters;
      if(name.match("?*(*)")) {
        auto p = name.trimRight(")", 1L).split("(", 1L).strip();
        name = p(0);
        parameters = split(p(1));
      }
      if(parameters) name.append("#", parameters.size());

      if(auto define = findDefine(name)) {
        if(parameters) frames.append({0, true});
        for(auto n : range(parameters.size())) {
          auto p = define().parameters(n).split(" ", 1L).strip();
          if(p.size() == 1) p.prepend("define");

          if(0);
          else if(p[0] == "define") setDefine(p[1], {}, parameters(n), Frame::Level::Inline);
          else if(p[0] == "string") setDefine(p[1], {}, text(parameters(n)), Frame::Level::Inline);
          else if(p[0] == "evaluate") setDefine(p[1], {}, evaluate(parameters(n)), Frame::Level::Inline);
          else error("unsupported parameter type: ", p[0]);
        }
        auto value = define().value;
        evaluateDefines(value);
        s = {slice(s, 0, x), value, slice(s, y + 1)};
        if(parameters) frames.removeRight();
        return evaluateDefines(s);
      }
    }
  }
}

auto Bass::readArchitecture(const string& s) -> string {
  string location{Path::userData(), "bass/architectures/", s, ".arch"};
  if(!file::exists(location)) location = {Path::program(), "architectures/", s, ".arch"};
  if(!file::exists(location)) error("unknown architecture: ", s);
  return string::read(location);
}

auto Bass::filepath() -> string {
  return Location::path(sourceFilenames[activeInstruction->fileNumber]);
}

//split argument list by commas, being aware of parenthesis depth and quotes
auto Bass::split(const string& s) -> string_vector {
  string_vector result;
  uint offset = 0;
  char quoted = 0;
  uint depth = 0;
  bool escaped = 0;
  for(uint n : range(s.size())) {
    if(s[n] == '\\' && quoted) {
      escaped = 1;
      continue;
    }
    if(escaped) {
      escaped = 0;
      continue;
    }
    if(!quoted) {
      if(s[n] == '\"' || s[n] == '\'') quoted = s[n];
    } else if(quoted == s[n]) {
      quoted = 0;
    }
    if(s[n] == '(' && !quoted) depth++;
    if(s[n] == ')' && !quoted) depth--;
    if(s[n] == ',' && !quoted && !depth) {
      result.append(slice(s, offset, n - offset));
      offset = n + 1;
    }
  }
  if(offset < s.size()) result.append(slice(s, offset, s.size() - offset));
  if(quoted) error("mismatched quotes in expression");
  if(depth) error("mismatched parentheses in expression");
  return result.strip();
}

//reduce all duplicate whitespace segments (eg "  ") to single whitespace (" ")
auto Bass::strip(string& s) -> void {
  uint offset = 0;
  char quoted = 0;
  for(uint n : range(s.size())) {
    if(!quoted) {
      if(s[n] == '"' || s[n] == '\'') quoted = s[n];
    } else if(quoted == s[n]) {
      quoted = 0;
    }
    if(!quoted && s[n] == ' ' && s[n + 1] == ' ') continue;
    s.get()[offset++] = s[n];
  }
  s.resize(offset);
}

//returns true for valid name identifiers
auto Bass::validate(const string& s) -> bool {
  for(uint n : range(s.size())) {
    char c = s[n];
    if(c == '_' || c == '#') continue;
    if(c >= 'A' && c <= 'Z') continue;
    if(c >= 'a' && c <= 'z') continue;
    if(c >= '0' && c <= '9' && n) continue;
    if(c == '.' && n) continue;
    return false;
  }
  return true;
}

auto Bass::text(string s) -> string {
  if(!s.match("\"*\"")) warning("string value is unquoted: ", s);

  auto parts = s.qsplit("~").strip();
  for(auto& p : parts) {
    p.trim("\"", "\"", 1L);
    p.replace("\\\\", "\\");
    p.replace("\\n", "\n");
    p.replace("\\t", "\t");
  }
  return parts.merge();
}

auto Bass::character(const string& s) -> int64_t {
  maybe<uint8_t> result;
  if(s[0] == '\'') {
    if(0);
    else if(s[1] == '\\' && s[2] == '\\' && s[3] == '\'') result = '\\';
    else if(s[1] == '\\' && s[2] == '\'' && s[3] == '\'') result = '\'';
    else if(s[1] == '\\' && s[2] == '\"' && s[3] == '\'') result = '\"';
    else if(s[1] == '\\' && s[2] == 'n'  && s[3] == '\'') result = '\n';
    else if(s[1] == '\\' && s[2] == 't'  && s[3] == '\'') result = '\t';
    else if(s[2] == '\'') result = s[1];
  }

  if(!result) {
    warning("unrecognized character constant: ", s);
    return 0;
  }

  if(charactersUseMap) result = stringTable[*result];
  return *result;
}
