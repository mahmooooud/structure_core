import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get_it/get_it.dart';
import 'package:structure_core/core/datasource/isp_helper.dart';
import 'package:structure_core/core/navigation/base_route.gr.dart'  as router;

// import 'package:openid_client/openid_client.dart';
// import 'package:openid_client/openid_client_io.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import '../navigation/base_route.dart';

class AuthService {
  AuthService();

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



}
