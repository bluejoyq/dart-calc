class ZeroDivisionException implements Exception {
  final String message;
  const ZeroDivisionException([this.message = '']);
  String toString() => 'ZeroDivisionException: $message';
}
