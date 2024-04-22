import 'package:structure_core/core/localization/translate.dart';
import 'base_error.dart';

class ForbiddenError extends BaseError {
  const ForbiddenError();

  @override
  String toString() {
    return Translate.s.error_forbidden_error;
  }
}
