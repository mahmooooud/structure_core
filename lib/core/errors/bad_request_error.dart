
import 'base_error.dart';

class BadRequestError extends BaseError {
  final String? message;

  const BadRequestError({this.message});

  @override
  String toString() {
    return message ?? "BAD REQUEST";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is BadRequestError &&
          runtimeType == other.runtimeType &&
          message == other.message;

  @override
  int get hashCode => super.hashCode ^ message.hashCode;
}
