class CalculatorLogic {
  // Вычисление математического выражения
  static double evaluateExpression(String expression) {
    List<String> tokens = _tokenizeExpression(expression);
    if (tokens.isEmpty) return double.nan; // Если выражение пустое, вернуть NaN
    double result = double.parse(tokens[0]);

    // Проходим по выражению, выполняем операции
    for (int i = 1; i < tokens.length - 1; i += 2) {
      String operator = tokens[i];
      double operand = double.parse(tokens[i + 1]);
      switch (operator) {
        case '+':
          result += operand;
          break;
        case '-':
          result -= operand;
          break;
        case '*':
          result *= operand;
          break;
        case '/':
          if (operand != 0) {
            result /= operand;
          } else {
            return double.nan;
          }
          break;
      }
    }
    return result;
  }

  // Разбиение выражения на числа и операторы
  static List<String> _tokenizeExpression(String expression) {
    List<String> tokens = [];
    String currentToken = '';
    for (int i = 0; i < expression.length; i++) {
      if (_isOperator(expression[i])) {
        if (currentToken.isNotEmpty) {
          tokens.add(currentToken.trim());
          currentToken = '';
        }
        tokens.add(expression[i]);
      } else {
        currentToken += expression[i];
      }
    }
    if (currentToken.isNotEmpty) {
      tokens.add(currentToken.trim());
    }
    return tokens;
  }

  // Проверка, является ли символ оператором
  static bool _isOperator(String char) {
    return char == '+' || char == '-' || char == '*' || char == '/';
  }
}