import 'package:dart_calc/calculator.dart';

void main(List<String> args) {
  try {
    final calculator = Calculator(args);
    final result = calculator.operate();
    print(result);
  } catch (e) {
    print(e);
  }
}
