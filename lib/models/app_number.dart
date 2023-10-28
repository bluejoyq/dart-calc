import 'package:dart_calc/exception.dart';

abstract class AppBaseNumber {
  final num value;
  final num delta = 1e-10;
  AppBaseNumber(this.value);

  AppBaseNumber operator +(AppBaseNumber other);
  AppBaseNumber operator -(AppBaseNumber other);
  AppBaseNumber operator *(AppBaseNumber other);
  AppBaseNumber operator /(AppBaseNumber other);
}

class AppNumber implements AppBaseNumber {
  @override
  final num value;
  @override
  final num delta = 1e-10;
  AppNumber(this.value);

  @override
  AppNumber operator +(AppBaseNumber other) {
    return AppNumber(value + other.value);
  }

  @override
  AppNumber operator -(AppBaseNumber other) {
    return AppNumber(value - other.value);
  }

  @override
  AppNumber operator *(AppBaseNumber other) {
    return AppNumber(value * other.value);
  }

  @override
  AppNumber operator /(AppBaseNumber other) {
    if (other.value == 0) {
      throw ZeroDivisionException('Division by zero is not allowed.');
    }
    return AppNumber(value / other.value);
  }

  @override
  String toString() {
    return value.toString();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    if (other is AppNumber) {
      return (value - other.value).abs() < delta;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;
}
