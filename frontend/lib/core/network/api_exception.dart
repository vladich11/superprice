sealed class AppException implements Exception {
  const AppException(this.message);
  final String message;

  @override
  String toString() => message;
}

final class NetworkException extends AppException {
  const NetworkException([
    super.message = 'Network error. Check your connection.',
  ]);
}

final class UnauthorizedException extends AppException {
  const UnauthorizedException() : super('Unauthorized. Invalid API key.');
}

final class NotFoundException extends AppException {
  const NotFoundException() : super('Resource not found.');
}

final class ServerException extends AppException {
  const ServerException() : super('Server error. Try again later.');
}

final class UnknownException extends AppException {
  const UnknownException([super.message = 'An unexpected error occurred.']);
}
