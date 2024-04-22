import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tf_dio_cache/dio_http_cache.dart';

@lazySingleton
class DioCacheOptions {
  Options call(
      {bool forceRefresh = true,
      Map<String, dynamic>? headers,
      String? contentType}) {
    return buildCacheOptions(
      const Duration(days: 3),
      maxStale: const Duration(days: 7),
      forceRefresh: forceRefresh,
      options: Options(
          extra: {},
          headers: headers ?? {},
          contentType: contentType),
    );
  }
}
