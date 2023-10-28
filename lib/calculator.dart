import 'package:dart_calc/exception.dart';
import 'package:dart_calc/models/app_number.dart';

class Calculator {
  late AppBaseNumber operand1;
  AppBaseNumber? operand2;
  String operator = '';
  Calculator(List<String> args) {
    if (args.length > 3) {
      throw TooManyArgsException('Args length must be less than 3');
    }

    operand1 = AppNumber(num.parse(args[0]));
    operator = args[1];
    try {
      operand2 = AppNumber(num.parse(args[2]));
    } on RangeError catch (_) {
      operand2 = null;
    } catch (e) {
      rethrow;
    }
  }

  AppBaseNumber operate() {
    try {
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
          throw UnsupportedError('Unsupported operator');
      }
    } on TypeError catch (_) {
      throw OperandException('Second Operand is empty');
    } catch (e) {
      rethrow;
    }
  }
}
