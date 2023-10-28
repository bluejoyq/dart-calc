import 'package:dart_calc/models/app_number.dart';

class Calculator {
  late AppBaseNumber operand1;
  AppBaseNumber? operand2;
  String operator = '';
  Calculator(List<String> args) {
    if (args.length > 3) {
      throw RangeError('인수가 많습니다.');
    }

    operand1 = AppNumber(num.parse(args[0]));
    operator = args[1];
    try {
      operand2 = AppNumber(num.parse(args[2]));
    } catch (_) {
      operand2 = null;
    }
  }

  AppBaseNumber operate() {
    switch (operator) {
      case '+':
        return operand1 + operand2!;
      case '-':
        return operand1 - operand2!;
      case '*':
        return operand1 * operand2!;
      case '/':
        return operand1 / operand2!;
      default:
        throw UnsupportedError('지원하지 않는 연산자입니다.');
    }
  }
}
