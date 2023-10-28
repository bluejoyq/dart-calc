class ZeroDivisionException implements Exception {
  final String message;
  const ZeroDivisionException([this.message = '']);
  @override
  String toString() => 'ZeroDivisionException: $message';
}

class OperandException implements Exception {
  final String message;
  const OperandException([this.message = '']);
  @override
  String toString() => 'OperandException: $message';
}

class TooManyArgsException implements Exception {
  final String message;
  const TooManyArgsException([this.message = '']);
  @override
  String toString() => 'TooManyArgsException: $message';
}

class TooFewArgsException implements Exception {
  final String message;
  const TooFewArgsException([this.message = '']);
  @override
  String toString() => 'TooFewArgsException: $message';
}
