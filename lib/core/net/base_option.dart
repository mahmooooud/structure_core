import 'package:dio/dio.dart';

import '../../env/config_reader.dart';

class DioBaseOption {
  BaseOptions get options => BaseOptions(
        connectTimeout: 150000000,
        receiveTimeout: 150000000,
        sendTimeout: 100000000,
        responseType: ResponseType.json,
        baseUrl: ConfigReader.getAPIUrl(),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
}
