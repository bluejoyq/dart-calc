import 'package:dart_calc/exception.dart';
import 'package:test/test.dart';

Matcher throwsZeroDivisionException = throwsA(isA<ZeroDivisionException>());
