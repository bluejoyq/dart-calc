class ZeroDivisionException implements Exception {
  final String message;
  const ZeroDivisionException([this.message = '']);
  @override
  String toString() => 'ZeroDivisionException: $message';
}
