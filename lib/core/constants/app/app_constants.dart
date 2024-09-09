// Keys
import 'package:flutter/material.dart';


class ApplicationConstants {
   String _TITLE_APP_NAME = 'ABH';
   String _KEY_LANGUAGE = 'language';
   String _KEY_TOKEN = 'token';

   String get TITLE_APP_NAME => _TITLE_APP_NAME;

  set TITLE_APP_NAME(String value) {
    _TITLE_APP_NAME = value;
  }

  String _HEADER_BEARER = 'bearer';
   String _ID_TOKEN = 'idToken';
   String _USER_DATA = 'userData';
   String _Guard_DATA = 'guardData';
   String _FONT_SIZE = 'font-size';
   String _REFRESH_TOKEN = 'refresh_token';
   String _KEY_FIREBASE_TOKEN = 'firebase_token';
   String _KEY_FIRST_START = 'First_start';
   String _KEY_IS_Guard = 'is_guard';
   String _KEY_IS_CHECKED_IN = 'is_checked_in';
   String _KEY_IS_CHECKED_OUT = 'is_checked_out';
   String _KEY_MAX_CHECK_IN = 'max_time_to_checkInt';
   String _KEY_CHECKED_DATE = 'checked_date';
   String _IS_ANONYMOUS_TOKEN = 'IsAnonymousToken';
   String _OFFLINE_REQUESTS = 'offline_requests';
   String _FONT_FAMILY = 'ABH';
   String _FONT_FAMILY_URL =
      'https://cdn.jsdelivr.net/gh/googlefonts/roboto@v2.138/src/hinted/Roboto-Regular.ttf';
   String _ICO_FONT_FAMILY_ICONS = 'common';
   String _Prime_FONT_FAMILY_ICONS = 'primeicons';
   String _FONT_FAMILY_ICON_URL =
      'https://dev.saeed.projects.roaa.tech/assets/fonts/icomoon/icomoon.ttf?iefix';

   String _authHeader = 'Authorization';
   String _imageLogo = "assets/images/osos.png";

// Languages
   String _langEN = 'en';
   String _langAR = 'ar';
   String _lang = 'lang';

  /// Pagination
   int _paginationLimit = 16;
   int _paginationSkip = 0;

   BorderRadius _appBorderRadius = BorderRadius.all(Radius.circular(5));

  String get KEY_LANGUAGE => _KEY_LANGUAGE;

  set KEY_LANGUAGE(String value) {
    _KEY_LANGUAGE = value;
  }

  String get KEY_TOKEN => _KEY_TOKEN;

  set KEY_TOKEN(String value) {
    _KEY_TOKEN = value;
  }

  String get HEADER_BEARER => _HEADER_BEARER;

  set HEADER_BEARER(String value) {
    _HEADER_BEARER = value;
  }

  String get ID_TOKEN => _ID_TOKEN;

  set ID_TOKEN(String value) {
    _ID_TOKEN = value;
  }

  String get USER_DATA => _USER_DATA;

  set USER_DATA(String value) {
    _USER_DATA = value;
  }

  String get Guard_DATA => _Guard_DATA;

  set Guard_DATA(String value) {
    _Guard_DATA = value;
  }

  String get FONT_SIZE => _FONT_SIZE;

  set FONT_SIZE(String value) {
    _FONT_SIZE = value;
  }

  String get REFRESH_TOKEN => _REFRESH_TOKEN;

  set REFRESH_TOKEN(String value) {
    _REFRESH_TOKEN = value;
  }

  String get KEY_FIREBASE_TOKEN => _KEY_FIREBASE_TOKEN;

  set KEY_FIREBASE_TOKEN(String value) {
    _KEY_FIREBASE_TOKEN = value;
  }

  String get KEY_FIRST_START => _KEY_FIRST_START;

  set KEY_FIRST_START(String value) {
    _KEY_FIRST_START = value;
  }

  String get KEY_IS_Guard => _KEY_IS_Guard;

  set KEY_IS_Guard(String value) {
    _KEY_IS_Guard = value;
  }

  String get KEY_IS_CHECKED_IN => _KEY_IS_CHECKED_IN;

  set KEY_IS_CHECKED_IN(String value) {
    _KEY_IS_CHECKED_IN = value;
  }

  String get KEY_IS_CHECKED_OUT => _KEY_IS_CHECKED_OUT;

  set KEY_IS_CHECKED_OUT(String value) {
    _KEY_IS_CHECKED_OUT = value;
  }

  String get KEY_MAX_CHECK_IN => _KEY_MAX_CHECK_IN;

  set KEY_MAX_CHECK_IN(String value) {
    _KEY_MAX_CHECK_IN = value;
  }

  String get KEY_CHECKED_DATE => _KEY_CHECKED_DATE;

  set KEY_CHECKED_DATE(String value) {
    _KEY_CHECKED_DATE = value;
  }

  String get IS_ANONYMOUS_TOKEN => _IS_ANONYMOUS_TOKEN;

  set IS_ANONYMOUS_TOKEN(String value) {
    _IS_ANONYMOUS_TOKEN = value;
  }

  String get OFFLINE_REQUESTS => _OFFLINE_REQUESTS;

  set OFFLINE_REQUESTS(String value) {
    _OFFLINE_REQUESTS = value;
  }

  String get FONT_FAMILY => _FONT_FAMILY;

  set FONT_FAMILY(String value) {
    _FONT_FAMILY = value;
  }

  String get FONT_FAMILY_URL => _FONT_FAMILY_URL;

  set FONT_FAMILY_URL(String value) {
    _FONT_FAMILY_URL = value;
  }

  String get ICO_FONT_FAMILY_ICONS => _ICO_FONT_FAMILY_ICONS;

  set ICO_FONT_FAMILY_ICONS(String value) {
    _ICO_FONT_FAMILY_ICONS = value;
  }

  String get Prime_FONT_FAMILY_ICONS => _Prime_FONT_FAMILY_ICONS;

  set Prime_FONT_FAMILY_ICONS(String value) {
    _Prime_FONT_FAMILY_ICONS = value;
  }

  String get FONT_FAMILY_ICON_URL => _FONT_FAMILY_ICON_URL;

  set FONT_FAMILY_ICON_URL(String value) {
    _FONT_FAMILY_ICON_URL = value;
  }

  String get authHeader => _authHeader;

  set authHeader(String value) {
    _authHeader = value;
  }

  String get imageLogo => _imageLogo;

  set imageLogo(String value) {
    _imageLogo = value;
  }

  String get langEN => _langEN;

  set langEN(String value) {
    _langEN = value;
  }

  String get langAR => _langAR;

  set langAR(String value) {
    _langAR = value;
  }

  String get lang => _lang;

  set lang(String value) {
    _lang = value;
  }

  int get paginationLimit => _paginationLimit;

  set paginationLimit(int value) {
    _paginationLimit = value;
  }

  int get paginationSkip => _paginationSkip;

  set paginationSkip(int value) {
    _paginationSkip = value;
  }

  BorderRadius get appBorderRadius => _appBorderRadius;

  set appBorderRadius(BorderRadius value) {
    _appBorderRadius = value;
  }
}
