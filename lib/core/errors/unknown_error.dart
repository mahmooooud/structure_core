import 'package:structure_core/core/localization/translate.dart';

import 'base_error.dart';

class UnknownError extends BaseError {
  const UnknownError();

  @override
  String toString() {
    return Translate.s.error_unknown_happened;
  }

}
