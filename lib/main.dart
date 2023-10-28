import 'package:dart_calc/calculator.dart';
import 'package:dart_calc/exception.dart';

void main(List<String> args) {
  try {
    final calculator = Calculator(args);
    final result = calculator.operate();
    print(result);
  } on RangeError catch (e) {
    print(e.message);
  } on UnsupportedError catch (e) {
    print(e.message);
  } on ZeroDivisionException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}
