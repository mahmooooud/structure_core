import 'package:flutter/material.dart';
import 'package:ndf/core/errors/cancel_error.dart';
import 'package:ndf/core/errors/connection_error.dart';
import 'package:ndf/core/localization/translate.dart';
import '../bloc/base_bloc/base_state.dart';
import '../errors/bad_request_error.dart';
import '../errors/custom_error.dart';
import '../errors/forbidden_error.dart';
import '../errors/internal_server_error.dart';
import '../errors/not_found_error.dart';
import '../errors/timeout_error.dart';
import '../errors/unauthorized_error.dart';
import 'status_pages/page_error_view.dart';

class ShowErrorWidget extends StatelessWidget {
  final BaseState state;

  const ShowErrorWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state.maybeWhen(orElse: () {
      return Container();
    }, failure: (error, callback) {
      // Connection Error
      if (error is ConnectionError) {
        return PageErrorView(
          errorMessage: Translate.s.error_connection,
          action: callback,
          actionName: 'TryAgain',
        );
      }
      // Custom Error
      else if (error is CustomError) {
        return PageErrorView(
          errorMessage: error.message,
        );
      }
      // Unauthorized Error
      else if (error is UnauthorizedError) {
        return UnauthorizedErrorScreenWidget();
      }
      // Not Found Error
      else if (error is NotFoundError) {
        return PageErrorView(
          errorMessage: error.message!,
        );
      }
      // Bad Request Error
      else if (error is BadRequestError) {
        return PageErrorView(
          errorMessage: error.message!,
        );
      }
      // Forbidden Error
      else if (error is ForbiddenError) {
        return PageErrorView(
          errorMessage: error.toString(),
        );
      }
      // Internal Server Error
      else if (error is InternalServerError) {
        return PageErrorView(
          action: callback,
          actionName: 'TryAgain',
          errorMessage: error.message!,
        );
      } else if (error is TimeoutError) {
        return PageErrorView(
          action: callback,
          actionName: 'TryAgain',
          errorMessage: error.toString(),
        );
      } else if (error is CancelError) {
        return PageErrorView(
          action: callback,
          actionName: 'TryAgain',
          errorMessage: error.toString(),
        );
      }
      return PageErrorView(
        action: callback,
        actionName: Translate.s.error_general,
        errorMessage: error.toString(),
      );
    });
  }
}

class UnauthorizedErrorScreenWidget extends StatelessWidget {
  const UnauthorizedErrorScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const SizedBox(),
      ),
    );
  }
}
