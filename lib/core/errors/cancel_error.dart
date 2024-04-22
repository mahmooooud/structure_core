import 'package:structure_core/core/localization/translate.dart';
import './base_error.dart';

class CancelError extends BaseError {
  const CancelError();

  @override
  String toString() {
    return Translate.s.error_cancel_token;
  }
}
