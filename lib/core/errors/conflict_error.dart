
import 'base_error.dart';

class ConflictError extends BaseError {
  const ConflictError();

  @override
  String toString() {
    return "Conflict error";
  }
}
