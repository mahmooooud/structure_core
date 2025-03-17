import 'dart:convert';
import 'dart:developer';
import 'package:ndf/core/navigation/base_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';
import 'package:ndf/core/common/extension/logger_extension.dart';
import 'package:ndf/core/datasource/isp_helper.dart';
import 'dart:async';

import '../navigation/base_route.dart';

class AuthService {
  AuthService();

  String discoveryUrl = Uri.encodeFull(
      "https://login.microsoftonline.com/b781bd77-48e7-4d90-9b8b-1aa0863936cd/v2.0/.well-known/openid-configuration");

  final List<String> _scopes = [
    'openid',
    'profile',
    'offline_access',
  ];

  Future<void> logout(Uri logoutUrl) async {
    await launchUrl(logoutUrl);
    await Future.delayed(const Duration(seconds: 1));
    await closeInAppWebView();
  }

  void setUserName(String token) {
    Map<String, dynamic> parsedJwt = parseJwt(token);
    print(parsedJwt['name']);
  }

  Map<String, dynamic> parseJwt(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw Exception('invalid token');
    }

    final payload = _decodeBase64(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }
    if (kDebugMode) {
      print(payloadMap);
    }
    return payloadMap;
  }

  String _decodeBase64(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');

    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception('Illegal base64url string!"');
    }

    return utf8.decode(base64Url.decode(output));
  }

  Future<void> userLogout(BuildContext context) async {
    var prefs = GetIt.I<ISpHelper>();
    await prefs.writeFirstRunApp(true);
    await prefs.writeIsAnonymousToken(true);
    await prefs.deleteToken();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (GetIt.I<AppRouter>().navigatorKey.currentContext!.router.canPop()) {
        GetIt.I<AppRouter>()
            .navigatorKey
            .currentContext!
            .router
            .pushAndPopUntil(
              LoginRoute(),
              predicate: (Route<dynamic> route) => false,
            );
      } else {
        context.router.pushAndPopUntil(
          LoginRoute(),
          predicate: (Route<dynamic> route) => false,
        );
      }
    });
  }
}
