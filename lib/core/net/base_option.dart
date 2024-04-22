import 'package:dio/dio.dart';


class DioBaseOption {
  BaseOptions get options => BaseOptions(
        connectTimeout: 150000000,
        receiveTimeout: 150000000,
        sendTimeout: 100000000,
        responseType: ResponseType.json,
        //todo baseUrl
        baseUrl: "",
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
}
