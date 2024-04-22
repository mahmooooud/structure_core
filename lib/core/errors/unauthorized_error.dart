import 'package:structure_core/core/localization/translate.dart';
import 'base_error.dart';

class UnauthorizedError extends BaseError {
  const UnauthorizedError();

  @override
  String toString() {
    return Translate.s.error_Unauthorized_Error;
  }
}
