import 'package:structure_core/core/localization/translate.dart';

import 'base_error.dart';

class ConnectionError extends BaseError {
  const ConnectionError();

  @override
  String toString() {
    return Translate.s.error_connection;
  }

}
