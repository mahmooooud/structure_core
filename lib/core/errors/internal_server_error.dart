import 'package:structure_core/core/localization/translate.dart';
import 'base_error.dart';

class InternalServerError extends BaseError {
  const InternalServerError({this.message});

  final String? message;

  @override
  String toString() {
    return message ?? Translate.s.error_internal_server;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is InternalServerError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => super.hashCode ^ message.hashCode;
}
