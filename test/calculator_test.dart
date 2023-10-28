import 'package:dart_calc/calculator.dart';
import 'package:dart_calc/models/app_number.dart';
import 'package:test/test.dart';

import 'custom_matcher.dart';

void main() {
  group('입력 파싱', () {
    test('잘못된 연산자가 들어오면 에러가 난다', () {
      expect(
          () => Calculator(['1', 'ㅁ', '3']).operate(), throwsUnsupportedError);
    });

    test('잘못된 피연산자가 들어오면 에러가 난다', () {
      expect(
          () => Calculator(['1', '+', 'ㅁ']).operate(), throwsFormatException);
    });

    test('피연산자가 부족하면 에러가 난다', () {
      expect(() => Calculator(['1', '+']).operate(), throwsOperandException);
    });

    test('피연산자가 많으면 에러가 난다', () {
      expect(() => Calculator(['1', '+', '3', '4']).operate(),
          throwsTooManyArgsException);
    });

    test('아무런 인수가 주어지지 않으면 에러가 난다', () {
      expect(() => Calculator([]).operate(), throwsRangeError);
    });
  });

  group('사칙연산', () {
    test('덧셈', () {
      expect(Calculator(['5', '+', '3']).operate(), AppNumber(8));
      expect(Calculator(['-5', '+', '3']).operate(), AppNumber(-2));
      expect(Calculator(['5.5', '+', '3']).operate(), AppNumber(8.5));
      expect(Calculator(['5', '+', '0']).operate(), AppNumber(5));
    });

    test('뺄셈', () {
      expect(Calculator(['5', '-', '3']).operate(), AppNumber(2));
      expect(Calculator(['-5', '-', '3']).operate(), AppNumber(-8));
      expect(Calculator(['5.5', '-', '0.5']).operate(), AppNumber(5));
      expect(Calculator(['5', '-', '0']).operate(), AppNumber(5));
    });

    test('곱셈', () {
      expect(Calculator(['5', '*', '3']).operate(), AppNumber(15));
      expect(Calculator(['-5', '*', '3']).operate(), AppNumber(-15));
      expect(Calculator(['5.5', '*', '2']).operate(), AppNumber(11));
      expect(Calculator(['5', '*', '0']).operate(), AppNumber(0));
    });

    test('나눗셈', () {
      expect(Calculator(['6', '/', '3']).operate(), AppNumber(2));
      expect(Calculator(['-6', '/', '3']).operate(), AppNumber(-2));
      expect(Calculator(['5.5', '/', '2']).operate(), AppNumber(2.75));
    });

    test('0으로 나누기', () {
      expect(() => Calculator(['5', '/', '0']).operate(),
          throwsZeroDivisionException);
    });
  });
}
