import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ndf/core/model/error_model/base_error_list_model.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:http_parser/http_parser.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/errors/connection_error.dart';
import 'package:ndf/core/errors/custom_error.dart';
import 'package:ndf/core/model/error_model/base_error_model.dart';
import 'package:ndf/core/ui/show_error.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../common/appConfig.dart';
import '../common/loading_helper.dart';
import '../constants/enums/http_method.dart';
import '../errors/bad_request_error.dart';
import '../errors/base_error.dart';
import '../errors/cancel_error.dart';
import '../errors/conflict_error.dart';
import '../errors/forbidden_error.dart';
import '../errors/format_error.dart';
import '../errors/internal_server_error.dart';
import '../errors/not_found_error.dart';
import '../errors/socket_error.dart';
import '../errors/timeout_error.dart';
import '../errors/unauthorized_error.dart';
import '../errors/unknown_error.dart';
import '../reader/LangReader.dart';
import '../result/result.dart';
import 'cache/dio_cache_options.dart';
import 'interceptor.dart';
import 'network_info.dart';
// import 'package:chucker_flutter/chucker_flutter.dart';

class HttpClient {
  late Dio _client;

  Dio get instance => _client;

  HttpClient(BaseOptions options) {
    _client = Dio(options);

    /// For logger
    if (kDebugMode) {
      _client.interceptors
          .add(PrettyDioLogger(requestBody: true, requestHeader: true));
    }
    (_client.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return client;
    };

    /// To add Authentication into header
    /// [authorization] [os] [appversion] [session]
    _client.interceptors.add(AuthInterceptor());
    _client.interceptors.add(TokenInterceptor());
    // _client.interceptors.add(CacheManager()().interceptor);
  }

  Future<MyResult<T>> request<T>({
    required T Function(dynamic) converter,
    required HttpMethod method,
    required String url,
    bool forceRefresh = true,
    Map<String, dynamic>? headers,
    String? contentType,

    /// if true, it will ShowDialog on loading and on error
    bool isPostRequest = false,
    required CancelToken cancelToken,
    dynamic queryParameters, // may be Map<String, dynamic> or String or int ..
    dynamic body, // may be Map<String, dynamic> or String or int ..
  }) async {
    if (isPostRequest) {
      GetIt.I<LoadingHelper>().showLoadingDialog();
    }

    // Get the response from the server
    Response response;
    final connected = await GetIt.I<NetworkInfoImpl>().isConnected;
    if (!connected) {
      if (isPostRequest) {
        GetIt.I<LoadingHelper>().dismissDialog();
        ShowError.showErrorSnakBar(const ConnectionError());
      }
      return const MyResult.isError(ConnectionError());
    }
    try {
      switch (method) {
        case HttpMethod.GET:
          response = await _client.get(
            url,
            queryParameters: queryParameters,
            options: GetIt.I<DioCacheOptions>()(
                forceRefresh: forceRefresh, headers: headers ?? {}),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.POST:
          response = await _client.post(
            url,
            data: body,
            queryParameters: queryParameters,
            options: GetIt.I<DioCacheOptions>()(
                forceRefresh: forceRefresh,
                headers: headers ?? {},
                contentType: contentType ?? "application/json"),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.PUT:
          response = await _client.put(
            url,
            data: body,
            queryParameters: queryParameters,
            options: GetIt.I<DioCacheOptions>()(forceRefresh: forceRefresh),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.PATCH:
          response = await _client.patch(
            url,
            data: body,
            queryParameters: queryParameters,
            options: GetIt.I<DioCacheOptions>()(forceRefresh: forceRefresh),
            cancelToken: cancelToken,
          );
          break;
        case HttpMethod.DELETE:
          response = await _client.delete(
            url,
            data: body,
            queryParameters: queryParameters,
            options: GetIt.I<DioCacheOptions>()(forceRefresh: forceRefresh),
            cancelToken: cancelToken,
          );
          break;
      }
      if (isPostRequest) {
        GetIt.I<LoadingHelper>().dismissDialog();
      }
      // Use the compute function to run parsePhotos in a separate isolate.
      if (response.data == null) {
        return const MyResult.isError(UnknownError());
      } else if (response.data is String ||
          response.data is bool ||
          response.data is List ||
          response.data is int) {
        return MyResult.isSuccess(converter(response.data!));
      } else if (response.data['success'] == false) {
        return MyResult.isError(
            CustomError(message: response.data['error']['message']));
      } else if (response.data['result'] == null &&
          response.data['success'] == false) {
        return const MyResult.isError(UnknownError());
      }
      return MyResult.isSuccess(
          converter(response.data['result'] ?? response.data));
    }
    // Handling errors
    on DioError catch (e) {
      BaseError error = _handleDioError(e);
      if (isPostRequest) {
        GetIt.I<LoadingHelper>().dismissDialog();
        ShowError.showErrorSnakBar(error);
      }
      return MyResult.isError(error);
    }

    // Couldn't reach out the server
    on SocketException catch (e) {
      if (isPostRequest) {
        GetIt.I<LoadingHelper>().dismissDialog();
        ShowError.showErrorSnakBar(const SocketError());
      }
      return const MyResult.isError(SocketError());
    } on HttpException catch (e) {
      if (isPostRequest) {
        GetIt.I<LoadingHelper>().dismissDialog();
        ShowError.showErrorSnakBar(const ConnectionError());
      }
      return const MyResult.isError(ConnectionError());
    }
  }

  Future<MyResult<String>> download(
      {required String url,
      required String savePath,
      Map<String, String>? headers,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress,
      dynamic data}) async {
    try {
      final connected = await GetIt.I<NetworkInfoImpl>().isConnected;
      if (!connected) {
        ShowError.showErrorSnakBar(const ConnectionError());
        return const MyResult.isError(ConnectionError());
      }
      await _client.download(
        url,
        savePath,
        onReceiveProgress: onReceiveProgress,
        options: Options(headers: headers),
        data: data,
        cancelToken: cancelToken,
      );
      return const MyResult.isSuccess("File downloaded successfully");
    }
    // Handling errors
    on DioError catch (e) {
      return MyResult.isError(_handleDioError(e));
    }
    // Couldn't reach out the server
    on SocketException catch (_) {
      return const MyResult.isError(SocketError());
    } on HttpException catch (_) {
      return const MyResult.isError(ConnectionError());
    } catch (_) {
      return const MyResult.isError(UnknownError());
    }
  }

  Future<MyResult<T>> upload<T>({
    required String url,
    required String fileKey,
    required String filePath,
    required String fileName,
    required MediaType mediaType,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required CancelToken cancelToken,
  }) async {
    Map<String, dynamic> dataMap = {};
    if (data != null) {
      dataMap.addAll(data);
    }
    dataMap.addAll({
      fileKey: await MultipartFile.fromFile(
        filePath,
        filename: fileName,
        contentType: mediaType,
      )
    });
    try {
      Response<T> response = await _client.post(
        url,
        data: FormData.fromMap(dataMap),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        options: Options(headers: headers),
        cancelToken: cancelToken,
      );

      try {
        // Get the decoded json
        return MyResult.isSuccess(response.data);
      } on FormatException catch (e) {
        return MyResult.isError(FormatError());
      } catch (e) {
        return const MyResult.isError(UnknownError());
      }
    }
    // Handling errors
    on DioError catch (e) {
      return MyResult.isError(_handleDioError(e));
    }

    // Couldn't reach out the server
    on SocketException catch (e) {
      return const MyResult.isError(SocketError());
    } on HttpException catch (e) {
      return const MyResult.isError(ConnectionError());
    }
  }

  BaseError _handleDioError<E>(DioError error) {
    BaseErrorModel? errorModel;
    List<BaseErrorListModel>? errorListModel;
    if (error.type == DioErrorType.other ||
        error.type == DioErrorType.response) {
      if (error.error is SocketException) return const SocketError();
      if (error.type == DioErrorType.response) {
        if (error.response!.data != null) {
          try {
            if (error.response!.statusCode == 400) {
              errorListModel = List<BaseErrorListModel>.from(
                  error.response!.data.map((model) {
                return BaseErrorListModel.fromJson(
                    json.decode(json.encode(model)));
              })).toList();
            } else {
              errorModel = BaseErrorModel.fromJson(error.response!.data);
            }
          } catch (e) {
            print("errorListModel ${e.toString()}");
          }
        }
        switch (error.response!.statusCode) {
          case 400:
            if (errorListModel != null ||
                (errorListModel?.isNotEmpty ?? false)) {
              if (errorListModel?.first.errorMessage != null) {
                String? message = errorListModel?.first.errorMessage ?? "";
                return BadRequestError(
                    message:
                        message ?? errorListModel?.first.errorMessage ?? "");
              }
            }
            return const BadRequestError();
          case 401:
            return const UnauthorizedError();
          case 403:
            return const ForbiddenError();
          case 404:
            if (errorModel != null) {
              if (errorModel.exCode != null) {
                String? message = errorListModel?.first.errorMessage ?? "";

                return BadRequestError(
                    message: message ?? errorModel.message!.first.errorMessage);
              }
            }
            return const NotFoundError();
          case 409:
            return const ConflictError();
          case 500:
            if (errorModel != null) {
              if (errorModel.exCode != null) {
                String? message = errorListModel?.first.errorMessage ?? "";

                return BadRequestError(
                    message: message ?? errorModel.message!.first.errorMessage);
              }
            }
            return const InternalServerError();
          case 307:
            return const UnknownError();
          case 422:
            if (errorModel != null) {
              if (errorModel.exCode != null) {
                String? message = errorModel?.message?.first.errorMessage ?? "";
                return BadRequestError(
                    message: message ?? errorModel.message!.first.errorMessage);
              }
            }
            return const UnknownError();
          default:
            if (errorModel != null) {
              if (errorModel.exCode != null) {
                String? message = errorListModel?.first.errorMessage ?? "";

                return BadRequestError(
                    message: message ?? errorModel.message!.first.errorMessage);
              }
            }
            return const UnknownError();
        }
      }
      return const UnknownError();
    } else {
      if (error.type == DioErrorType.connectTimeout ||
          error.type == DioErrorType.sendTimeout ||
          error.type == DioErrorType.receiveTimeout) {
        return const TimeoutError();
      } else if (error.type == DioErrorType.cancel) {
        return const CancelError();
      } else {
        return const UnknownError();
      }
    }
  }
}
