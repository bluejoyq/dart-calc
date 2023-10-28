import 'package:dart_calc/exception.dart';
import 'package:dart_calc/models/app_number.dart';

class Calculator {
  AppBaseNumber addition(AppBaseNumber a, AppBaseNumber b) {
    return a + b;
  }

  AppBaseNumber subtraction(AppBaseNumber a, AppBaseNumber b) {
    return a - b;
  }

  AppBaseNumber division(AppBaseNumber a, AppBaseNumber b) {
    if (b == 0) {
      throw ZeroDivisionException('0으로 나눌 수 없습니다.');
    }
    return a / b;
  }

  AppBaseNumber multiplication(AppBaseNumber a, AppBaseNumber b) {
    return a * b;
  }
}
