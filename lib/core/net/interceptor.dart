import 'dart:async';
import 'dart:developer';
import 'package:flutter_timezone/flutter_timezone.dart';

import 'package:ndf/core/navigation/base_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/feature/auth/data/models/user_model/refresh_token_request_model.dart';
import 'package:ndf/feature/auth/domain/repositories/auth_repository.dart';

import '../constants/app/app_constants.dart';
import '../datasource/isp_helper.dart';
import '../services/auth_service.dart';
import 'net.dart';

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

    final apiToken = await GetIt.I<ISpHelper>().authToken;
    final tokenType = await GetIt.I<ISpHelper>().authTokenType;

    if (apiToken != null && apiToken.isNotEmpty) {
      print('$tokenType $apiToken');
      options.headers[ApplicationConstants.authHeader] = '$tokenType $apiToken';
    }
    options.headers[ApplicationConstants.timeZoneHeader] =
        await FlutterTimezone.getLocalTimezone();
    options.headers[ApplicationConstants.lang] =
        AppConfig().currentLanguageCode;
    return handler.next(options);
  }
}

class TokenInterceptor extends QueuedInterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      if (err.response!.statusCode == 401) {
        print('path>>>');
        print(err.response?.requestOptions.path);
        if (err.response?.requestOptions.path
                .contains(ApiUrl.getRefreshTokenUrl) ??
            false) {
          Future.sync(() => AuthService()
              .userLogout(GetIt.I<AppRouter>().navigatorKey.currentContext!));
          super.onError(err, handler);
        } else {
          // GetIt.I<HttpClient>().instance.lock();
          final apiToken = await GetIt.I<ISpHelper>().authToken;
          final refreshToken = await GetIt.I<ISpHelper>().refreshToken;
          RefreshTokenRequestModel model = RefreshTokenRequestModel(
              oldAccessToken: apiToken, refreshToken: "${refreshToken}");

          GetIt.I<HttpClient>().instance.unlock();
          GetIt.instance.get<AuthRepository>().refreshToken(model).then((res) {
            res.when(isSuccess: (response) async {
              if (response!.data != null) {
                GetIt.I<ISpHelper>()
                    .writeToken(response.data!.token!, 'Bearer');
                GetIt.I<ISpHelper>()
                    .writeRefreshToken(response.data!.refreshToken ?? "");
                final RequestOptions request = err.response!.requestOptions;
                request.headers[ApplicationConstants.authHeader] =
                    'Bearer ${response.data!.token}';
                // GetIt.I<HttpClient>().instance.unlock();
                final Options options = Options(
                  headers: request.headers,
                  method: request.method,
                );
                try {
                  final Response response =
                      await GetIt.I<HttpClient>().instance.request(
                            request.path,
                            data: request.data,
                            queryParameters: request.queryParameters,
                            cancelToken: request.cancelToken,
                            options: options,
                            onReceiveProgress: request.onReceiveProgress,
                          );
                  return handler.resolve(response);
                } on DioError catch (e) {
                  return handler.reject(e);
                }
              } else {
                GetIt.I<HttpClient>().instance.unlock();
                Future.sync(() => AuthService().userLogout(
                    GetIt.I<AppRouter>().navigatorKey.currentContext!));
                super.onError(err, handler);
              }
            }, isError: (error) {
              GetIt.I<HttpClient>().instance.unlock();
              Future.sync(() => AuthService().userLogout(
                  GetIt.I<AppRouter>().navigatorKey.currentContext!));
              super.onError(err, handler);
            });
          });
        }
      } else {
        super.onError(err, handler);
      }
    } else {
      super.onError(err, handler);
    }
  }
}

//  6ecU2e4QOnRoqMAm6_RsxA
