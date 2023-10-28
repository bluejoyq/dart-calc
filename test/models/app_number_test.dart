import 'package:dart_calc/models/app_number.dart';
import 'package:test/test.dart';

import '../custom_matcher.dart';

void main() {
  group('덧셈', () {
    test('두 정수의 합', () {
      expect(AppNumber(1) + AppNumber(2), AppNumber(3));
    });
    test('정수와 실수의 합', () {
      expect(AppNumber(1) + AppNumber(-1.1), AppNumber(-0.1));
    });

    test('두 실수의 합이 정수가 되는 경우', () {
      expect(AppNumber(1.1) + AppNumber(-1.1), AppNumber(0));
    });
  });

  group('뺄셈', () {
    test('두 정수의 차', () {
      expect(AppNumber(1) - AppNumber(2), AppNumber(-1));
    });

    test('정수와 실수의 차', () {
      expect(AppNumber(1) - AppNumber(-1.1), AppNumber(2.1));
    });

    test('두 실수의 차가 정수가 되는 경우', () {
      expect(AppNumber(3.1) - AppNumber(1.1), AppNumber(2));
    });
  });

  group('나눗셈', () {
    test('두 정수의 나눗셈', () {
      expect(AppNumber(1) / AppNumber(2), AppNumber(0.5));
    });

    test('정수와 실수의 나눗셈', () {
      expect(AppNumber(1) / AppNumber(-2), AppNumber(-0.5));
    });

    test('두 실수의 나눗셈', () {
      expect(AppNumber(0.1) / AppNumber(0.1), AppNumber(1.0));
    });

    test('0으로 나누는 경우', () {
      expect(() => AppNumber(1) / AppNumber(0), throwsZeroDivisionException);
    });
  });

  group('곱셈', () {
    test('두 정수의 곱셈', () {
      expect(AppNumber(5) * AppNumber(100), AppNumber(500));
    });

    test('정수와 실수의 곱셈', () {
      expect(AppNumber(5) * AppNumber(0.1), AppNumber(0.5));
    });

    test('두 실수의 곱셈', () {
      expect(AppNumber(0.1) * AppNumber(0.1), AppNumber(0.01));
    });
  });
}
