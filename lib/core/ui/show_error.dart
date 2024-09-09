import 'package:structure_core/core/common/custom_toast.dart';
import 'package:structure_core/core/errors/bad_request_error.dart';
import 'package:structure_core/core/errors/base_error.dart';
import 'package:structure_core/core/errors/conflict_error.dart';
import 'package:structure_core/core/errors/connection_error.dart';
import 'package:structure_core/core/errors/custom_error.dart';
import 'package:structure_core/core/errors/forbidden_error.dart';
import 'package:structure_core/core/errors/internal_server_error.dart';
import 'package:structure_core/core/errors/not_found_error.dart';
import 'package:structure_core/core/errors/socket_error.dart';
import 'package:structure_core/core/errors/timeout_error.dart';
import 'package:structure_core/core/errors/unauthorized_error.dart';
import 'package:structure_core/core/errors/unknown_error.dart';

class ShowError {
  static void showErrorSnakBar(BaseError error) {
    if (error is ConnectionError) {
      ShowError.showConnectionError();
    } else if (error is CustomError) {
      ShowError.showCustomError(error.message);
    } else if (error is UnauthorizedError) {
      ShowError.showCustomError(error.toString());
    } else if (error is BadRequestError) {
      ShowError.showCustomError(error.toString());
    } else if (error is ForbiddenError) {
      ShowError.showCustomError(error.toString());
    } else if (error is NotFoundError) {
      ShowError.showCustomError(error.toString());
    } else if (error is ConflictError) {
      ShowError.showCustomError(error.toString());
    } else if (error is TimeoutError) {
      ShowError.showCustomError(error.toString());
    } else if (error is UnknownError) {
      ShowError.showCustomError(error.toString());
    } else if (error is InternalServerError) {
      ShowError.showCustomError(error.toString());
    } else if (error is SocketError) {
      ShowError.showCustomError(error.toString());
    } else {
      ShowError.showCustomError(error.toString());
    }
  }

  static void showConnectionError() {
    CustomToast.showSnakeBar(
      "Connection error",
    );
  }

  static void showCustomError(String message) {
    CustomToast.showSnakeBar(
      message,
    );
  }
}
