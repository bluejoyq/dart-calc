import 'package:dart_calc/calculator.dart';
import 'package:dart_calc/models/app_number.dart';
import 'package:test/test.dart';

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
      expect(() => Calculator(['1', '+']).operate(), throwsRangeError);
    });

    test('피연산자가 많으면 에러가 난다', () {
      expect(
          () => Calculator(['1', '+', '3', '4']).operate(), throwsRangeError);
    });

    test('아무런 인수가 주어지지 않으면 에러가 난다', () {
      expect(() => Calculator([]).operate(), throwsRangeError);
    });
  });
}
