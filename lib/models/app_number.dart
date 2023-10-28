abstract class AppBaseNumber {
  final num value;

  AppBaseNumber(this.value);

  AppBaseNumber operator +(AppBaseNumber other);
  AppBaseNumber operator -(AppBaseNumber other);
  AppBaseNumber operator *(AppBaseNumber other);
  AppBaseNumber operator /(AppBaseNumber other);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is AppBaseNumber) {
      return value == other.value;
    }
    return false;
  }

  @override
  int get hashCode => value.hashCode;
}

class AppNumber implements AppBaseNumber {
  @override
  final num value;

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
      throw ArgumentError('Division by zero is not allowed.');
    }
    return AppNumber(value / other.value);
  }
}
