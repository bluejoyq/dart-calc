import 'package:dart_calc/calculator.dart';
import 'package:test/test.dart';

void main() {
  Calculator calculator = new Calculator();
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
}
