import 'package:dart_calc/exception.dart';
import 'package:test/test.dart';

Matcher throwsZeroDivisionException = throwsA(isA<ZeroDivisionException>());
Matcher throwsOperandException = throwsA(isA<OperandException>());
Matcher throwsTooManyArgsException = throwsA(isA<TooManyArgsException>());
