import 'base_error.dart';

class ForbiddenError extends BaseError {
  const ForbiddenError();

  @override
  String toString() {
    return "YOU DO NOT HAVE PRIVILEGE";
  }
}
