
import 'base_error.dart';

class TimeoutError extends BaseError {
  const TimeoutError();

  @override
  String toString() {
    return "TIME OUT";
  }
}
