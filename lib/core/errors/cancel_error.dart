import './base_error.dart';

class CancelError extends BaseError {
  const CancelError();

  @override
  String toString() {
    return "The connection is interrupted";
  }
}
