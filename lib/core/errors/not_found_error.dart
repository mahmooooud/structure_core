import 'package:ndf/core/localization/translate.dart';

import 'base_error.dart';

class NotFoundError extends BaseError {
  const NotFoundError({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? Translate.s.error_NotFound_Error;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is NotFoundError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => super.hashCode ^ message.hashCode;
}
