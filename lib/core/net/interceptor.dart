
import 'package:dio/dio.dart';
import 'package:structure_core/core/common/appConfig.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:structure_core/core/constants/app/app_constants.dart';

class AuthInterceptor extends QueuedInterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // create a list of the endpoints where you don't need to pass a token.
    final listOfPaths = <String>[
      //'/token',
    ];
    // Check if the requested endpoint match in the
    if (listOfPaths.contains(options.path.toString())) {
      // This for Anonymous User token that don't need '/api' in its url
      options.baseUrl = options.baseUrl.replaceAll('/api', '');
      options.contentType = "application/x-www-form-urlencoded";

      // if the endpoint is matched then skip adding the token.
      return handler.next(options);
    }

    options.headers[ApplicationConstants.lang] = AppConfig().currentLanguageCode;
    options.headers[ApplicationConstants.timeZoneHeader] = await FlutterTimezone.getLocalTimezone();

    return handler.next(options);
  }
}

class TokenInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {

    if (err.response != null) {
      if (err.response!.statusCode == 401) {

      } else {
        super.onError(err, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }
}
