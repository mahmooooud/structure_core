
import 'base_error.dart';

class SocketError extends BaseError {
  const SocketError();

  @override
  String toString() {
    return "No internet connection";
  }

}
