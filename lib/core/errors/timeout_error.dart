import 'package:structure_core/core/localization/translate.dart';

import 'base_error.dart';

class TimeoutError extends BaseError {
  const TimeoutError();

  @override
  String toString() {
    return Translate.s.error_Timeout_Error;
  }
}
