import 'package:dart_calc/exception.dart';

class Calculator {
  num addition(num a, num b) {
    return a + b;
  }

  num subtraction(num a, num b) {
    return a - b;
  }

  num division(num a, num b) {
    if (b == 0) {
      throw ZeroDivisionException('0으로 나눌 수 없습니다.');
    }
    return a / b;
  }

  num multiplication(num a, num b) {
    return a * b;
  }
}
