import 'dart:convert';

import 'package:flutter/services.dart';

abstract class ConfigReader {
  static late Map<String, dynamic> _config;

  static Future<void> initialize(String fileName) async {
    final configString = await rootBundle.loadString('assets/config/$fileName.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

  /// org url should be get when user login and write org url
  static String? _orgBaseUrl;

  static String get orgBaseUrl => _orgBaseUrl ?? _config['BASE_URL'] as String;

  static set orgBaseUrl(String value) {
    if (value != _orgBaseUrl) {
      _orgBaseUrl = value;
    }
  }

  /// BASE URL
  static String getBaseUrl() => orgBaseUrl;

  static String getAPIUrl() => getBaseUrl() + (_config['API'] as String);

  static String getClientId() => _config['CLIENT_ID'] as String;
  static String getAnonymousClientId() => _config['ANONYMOUS_CLIENT_ID'] as String;
  static String getAnonymousClientSECRET() => _config['ANONYMOUS_CLIENT_SECRET'] as String;
  static String getAnonymousGrantType() => _config['GRANT_TYPE'] as String;
}
