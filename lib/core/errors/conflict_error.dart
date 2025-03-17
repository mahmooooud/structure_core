import 'package:ndf/core/localization/translate.dart';

import 'base_error.dart';

class ConflictError extends BaseError {
  const ConflictError();

  @override
  String toString() {
    return Translate.s.error_conflict;
  }
}
