import 'base_error.dart';

class UnauthorizedError extends BaseError {
  const UnauthorizedError();

  @override
  String toString() {
    return "UNAUTHORIZED";
  }
}
