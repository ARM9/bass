auto Bass::evaluate(const string& expression, Evaluation mode) -> int64_t {
  maybe<string> name;
  if(expression == "--") name = {"lastLabel#", lastLabelCounter - 2};
  if(expression == "-" ) name = {"lastLabel#", lastLabelCounter - 1};
  if(expression == "+" ) name = {"nextLabel#", nextLabelCounter + 0};
  if(expression == "++") name = {"nextLabel#", nextLabelCounter + 1};
  if(name) {
    if(auto constant = findConstant({name()})) return constant().value;
    if(queryPhase()) return pc();
    error("relative label not declared");
  }

  Eval::Node* node = nullptr;
  try {
    node = Eval::parse(expression);
  } catch(const char* reason) {
    error("malformed expression: ", expression, " [", reason, "]");
  } catch(...) {
    error("malformed expression: ", expression);
  }
  return evaluate(node, mode);
}

auto Bass::evaluate(Eval::Node* node, Evaluation mode) -> int64_t {
  #define p(n) evaluate(node->link[n], mode)

  switch(node->type) {
  case Eval::Node::Type::Null: return 0;  //empty expressions
  case Eval::Node::Type::Function: return evaluateExpression(node, mode);
  case Eval::Node::Type::Literal: return evaluateLiteral(node, mode);
  case Eval::Node::Type::Subscript: return evaluateSubscript(node, mode);
  case Eval::Node::Type::LogicalNot: return !p(0);
  case Eval::Node::Type::BitwiseNot: return ~p(0);
  case Eval::Node::Type::Positive: return +p(0);
  case Eval::Node::Type::Negative: return -p(0);
  case Eval::Node::Type::Multiply: return p(0) * p(1);
  case Eval::Node::Type::Divide: return p(0) / p(1);
  case Eval::Node::Type::Modulo: return p(0) % p(1);
  case Eval::Node::Type::Add: return p(0) + p(1);
  case Eval::Node::Type::Subtract: return p(0) - p(1);
  case Eval::Node::Type::ShiftLeft: return p(0) << p(1);
  case Eval::Node::Type::ShiftRight: return p(0) >> p(1);
  case Eval::Node::Type::BitwiseAnd: return p(0) & p(1);
  case Eval::Node::Type::BitwiseOr: return p(0) | p(1);
  case Eval::Node::Type::BitwiseXor: return p(0) ^ p(1);
  case Eval::Node::Type::Equal: return p(0) == p(1);
  case Eval::Node::Type::NotEqual: return p(0) != p(1);
  case Eval::Node::Type::LessThanEqual: return p(0) <= p(1);
  case Eval::Node::Type::GreaterThanEqual: return p(0) >= p(1);
  case Eval::Node::Type::LessThan: return p(0) < p(1);
  case Eval::Node::Type::GreaterThan: return p(0) > p(1);
  case Eval::Node::Type::LogicalAnd: return p(0) ? p(1) : 0;
  case Eval::Node::Type::LogicalOr: return !p(0) ? p(1) : 1;
  case Eval::Node::Type::Condition: return p(0) ? p(1) : p(2);
  case Eval::Node::Type::Assign: return evaluateAssign(node, mode);
  }

  #undef p
  error("unsupported operator");
  return 0;
}

//calculates the number of parameters to a function without evaluating its arguments yet
auto Bass::quantifyParameters(Eval::Node* node) -> int64_t {
  if(node->type == Eval::Node::Type::Null) return 0;
  if(node->type == Eval::Node::Type::Separator) return node->link.size();
  return 1;  //any other type here signifies one argument
}

auto Bass::evaluateParameters(Eval::Node* node, Evaluation mode) -> vector<int64_t> {
  vector<int64_t> result;
  if(node->type == Eval::Node::Type::Null) return result;
  if(node->type != Eval::Node::Type::Separator) { result.append(evaluate(node, mode)); return result; }
  for(auto& link : node->link) result.append(evaluate(link, mode));
  return result;
}

auto Bass::evaluateExpression(Eval::Node* node, Evaluation mode) -> int64_t {
  string name = node->link[0]->literal;
  if(auto parameters = quantifyParameters(node->link[1])) name.append("#", parameters);

  if(name == "array.size#1") {
    string s = evaluateString(node->link[1]);
    if(auto array = findArray(s)) {
      return array->values.size();
    }
    error("unrecognized array: ", s);
    return 0;
  }
  if(name == "array.sort#1") {
    string s = evaluateString(node->link[1]);
    if(auto array = findArray(s)) {
      array->values.sort();
      return 0;
    }
    error("unrecognized array: ", s);
    return 0;
  }
  if(name == "assert#1") {
    int64_t result = evaluate(node->link[1], mode);
    if(result == 0) error("assertion failed");
    return 0;
  }
  if(name == "file.size#1") {
    string filename = evaluateString(node->link[1]).trim("\"", "\"", 1L);
    string location = {filepath(), filename};
    if(file::exists(location)) return file::size(location);
    error("file not found: ", filename);
    return 0;
  }
  if(name == "file.exists#1") {
    string filename = evaluateString(node->link[1]).trim("\"", "\"", 1L);
    string location = {filepath(), filename};
    return file::exists(location);
  }
  if(name == "read#1") {
    if(!targetFile) error("no target file open for reading");
    int64_t address = evaluate(node->link[1], mode);
    auto origin = targetFile.offset();
    targetFile.seek(address);
    uint8_t data = targetFile.read();
    targetFile.seek(origin);
    return data;
  }
  if(name == "origin") return origin;
  if(name == "base") return base;
  if(name == "pc") return pc();

  if(auto expression = findExpression(name)) {
    auto parameters = evaluateParameters(node->link[1], mode);
    if(parameters) frames.append({0, true});
    for(auto n : range(parameters.size())) {
      setVariable(expression().parameters(n), evaluate(parameters(n)), Frame::Level::Inline);
    }
    auto result = evaluate(expression().value);
    if(parameters) frames.removeRight();
    return result;
  }

  error("unrecognized expression: ", name);
  return 0;
}

//bass' evaluate() only returns int64_t types.
//this function is used to parse string arguments while performing trivial string concatenation
//eg "foo" ~ "bar" => "foobar"
auto Bass::evaluateString(Eval::Node* node) -> string {
  if(node->type == Eval::Node::Type::Literal) return node->literal;
  if(node->type == Eval::Node::Type::Concatenate) {
    string lhs = evaluateString(node->link[0]).trim("\"", "\"", 1L);
    string rhs = evaluateString(node->link[1]).trim("\"", "\"", 1L);
    return {"\"", lhs, rhs, "\""};
  };
  error("unrecognized string expression");
  return {};
}

auto Bass::evaluateLiteral(Eval::Node* node, Evaluation mode) -> int64_t {
  string& s = node->literal;

  if(s[0] == '0' && s[1] == 'b') return toBinary(s);
  if(s[0] == '0' && s[1] == 'o') return toOctal(s);
  if(s[0] == '0' && s[1] == 'x') return toHex(s);
  if(s[0] >= '0' && s[0] <= '9') return toInteger(s);
  if(s[0] == '%') return toBinary(s);
  if(s[0] == '$') return toHex(s);
  if(s.match("'?*'")) return character(s);

  if(auto variable = findVariable(s)) return variable().value;
  if(auto constant = findConstant(s)) return constant().value;
  if(mode != Evaluation::Strict && queryPhase()) return pc();

  error("unrecognized variable: ", s);
  return 0;
}

auto Bass::evaluateSubscript(Eval::Node* node, Evaluation mode) -> int64_t {
  string& s = node->link[0]->literal;

  if(auto array = findArray(s)) {
    auto index = evaluate(node->link[1], mode);
    if(index >= array->values.size()) {
      error("array subscript out of bounds: ", index, " >= ", array->values.size());
    }
    return array->values[index];
  }

  error("unrecognized array: ", s);
  return 0;
}

auto Bass::evaluateAssign(Eval::Node* node, Evaluation mode) -> int64_t {
  string& s = node->link[0]->literal;

  if(auto variable = findVariable(s)) {
    variable().value = evaluate(node->link[1], mode);
    return variable().value;
  }

  error("unrecognized variable assignment: ", s);
  return 0;
}
