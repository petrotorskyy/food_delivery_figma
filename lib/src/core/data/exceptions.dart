class ServerException implements Exception {
  const ServerException();
}

class UnExpectedException implements Exception {
  const UnExpectedException();
}

class CacheException implements Exception {}

class EmailAlreadyInUseException implements Exception {
  String? message;

  EmailAlreadyInUseException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class InvalidEmailException implements Exception {
  String? message;

  InvalidEmailException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class WeakPasswordException implements Exception {
  String? message;

  WeakPasswordException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class UserNotFoundException implements Exception {
  String? message;

  UserNotFoundException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class TooManyRequestException implements Exception {
  String? message;

  TooManyRequestException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class WrongPasswordException implements Exception {
  String? message;

  WrongPasswordException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}

class UserDisabledException implements Exception {
  String? message;

  UserDisabledException({
    required this.message,
  });

  @override
  String toString() {
    return 'FirebaseAuthException: $message';
  }
}
