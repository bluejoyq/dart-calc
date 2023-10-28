import 'package:dart_calc/calculator.dart';
import 'package:dart_calc/exception.dart';
import 'package:test/test.dart';

import 'matcher.dart';

void main() {
  Calculator calculator = Calculator();
  group('덧셈', () {
    test('두 정수의 합', () {
      expect(calculator.addition(1, 2), 3);
    });
    test('정수와 실수의 합', () {
      closeTo(calculator.addition(1, -1.1), -0.1);
    });

    test('두 실수의 합이 정수가 되는 경우', () {
      expect(calculator.addition(1.1, -1.1), 0);
    });
  });

  group('뺄셈', () {
    test('두 정수의 차', () {
      expect(calculator.subtraction(1, 2), -1);
    });

    test('정수와 실수의 차', () {
      closeTo(calculator.subtraction(1, -1.1), 2.1);
    });

    test('두 실수의 차가 정수가 되는 경우', () {
      expect(calculator.subtraction(3.1, 1.1), 2);
    });
  });

  group('나눗셈', () {
    test('두 정수의 나눗셈', () {
      closeTo(calculator.division(1, 2), 0.5);
    });

    test('정수와 실수의 나눗셈', () {
      closeTo(calculator.division(1, -2), -0.5);
    });

    test('두 실수의 나눗셈', () {
      closeTo(calculator.division(0.1, 0.1), 0.01);
    });

    test('0으로 나누는 경우', () {
      expect(() => calculator.division(1, 0), throwsZeroDivisionException);
    });
  });
}
