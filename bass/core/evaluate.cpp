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
}

auto Bass::evaluateParameters(Eval::Node* node, Evaluation mode) -> vector<int64_t> {
  vector<int64_t> result;
  if(node->type == Eval::Node::Type::Null) return result;
  if(node->type != Eval::Node::Type::Separator) { result.append(evaluate(node, mode)); return result; }
  for(auto& link : node->link) result.append(evaluate(link, mode));
  return result;
}

auto Bass::evaluateExpression(Eval::Node* node, Evaluation mode) -> int64_t {
  auto parameters = evaluateParameters(node->link[1], mode);
  string name = node->link[0]->literal;
  if(parameters) name.append("#", parameters.size());

  if(name == "origin") return origin;
  if(name == "base") return base;
  if(name == "pc") return pc();

  if(auto expression = findExpression(name)) {
    if(parameters) frames.append({0, true});
    for(auto n : range(parameters.size())) {
      setVariable(expression().parameters(n), evaluate(parameters(n)), Frame::Level::Inline);
    }
    auto result = evaluate(expression().value);
    if(parameters) frames.removeRight();
    return result;
  }

  error("unrecognized expression: ", name);
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
}

auto Bass::evaluateAssign(Eval::Node* node, Evaluation mode) -> int64_t {
  string& s = node->link[0]->literal;

  if(auto variable = findVariable(s)) {
    variable().value = evaluate(node->link[1], mode);
    return variable().value;
  }

  error("unrecognized variable assignment: ", s);
}
