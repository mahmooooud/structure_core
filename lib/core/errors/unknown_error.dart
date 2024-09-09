
import 'base_error.dart';

class UnknownError extends BaseError {
  const UnknownError();

  @override
  String toString() {
    return "Unknown error happened";
  }

}
