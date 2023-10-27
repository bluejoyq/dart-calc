import 'package:dart_calc/calculator.dart';
import 'package:test/test.dart';

void main() {
  Calculator calculator = new Calculator();
  group('덧셈', () {
    test('정수와 정수를 더한다', () {
      expect(calculator.addition(1, 2), 3);
    });
    test('정수와 실수를 더한다', () {
      closeTo(calculator.addition(1, -1.1), -0.1);
    });
  });
}
