

import 'dart:convert';

import 'package:flutter/services.dart';

abstract class LangReader{
  static late Map<String , dynamic> _configAR;
  static late Map<String , dynamic> _configEN;
  static Future<void> initialize() async {
    final responseStringAR = await rootBundle.loadString("assets/web_lang/ar.json");
    final responseStringEN = await rootBundle.loadString("assets/web_lang/en.json");

    _configAR= json.decode(responseStringAR) as Map<String,dynamic >;
    _configEN= json.decode(responseStringEN) as Map<String,dynamic >;
  }
  static String? getArValue(String key){
    return _configAR[key]?.toString();
  }
  static String? getEnValue(String key){
    return _configEN[key]?.toString();
  }
}