
import 'base_error.dart';

class ConnectionError extends BaseError {
  const ConnectionError();

  @override
  String toString() {
    return "An error occurred during the connection";
  }

}
