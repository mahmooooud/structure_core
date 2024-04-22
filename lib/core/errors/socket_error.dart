import 'package:structure_core/core/localization/translate.dart';

import 'base_error.dart';

class SocketError extends BaseError {
  const SocketError();

  @override
  String toString() {
    return Translate.s.error_socket;
  }

}
