// Keys
import 'package:flutter/material.dart';


class ApplicationConstants {
  String TITLE_APP_NAME = 'ABH';
  String KEY_LANGUAGE = 'language';
  String KEY_TOKEN = 'token';
  String HEADER_BEARER = 'bearer';
  String ID_TOKEN = 'idToken';
  String USER_DATA = 'userData';
  String Guard_DATA = 'guardData';
  String FONT_SIZE = 'font-size';
  String REFRESH_TOKEN = 'refresh_token';
  String KEY_FIREBASE_TOKEN = 'firebase_token';
  String KEY_FIRST_START = 'First_start';
  String KEY_IS_Guard = 'is_guard';
  String KEY_IS_CHECKED_IN = 'is_checked_in';
  String KEY_IS_CHECKED_OUT = 'is_checked_out';
  String KEY_MAX_CHECK_IN = 'max_time_to_checkInt';
  String KEY_CHECKED_DATE = 'checked_date';
  String IS_ANONYMOUS_TOKEN = 'IsAnonymousToken';
  String OFFLINE_REQUESTS = 'offline_requests';

  String FONT_FAMILY = 'ABH';
  String FONT_FAMILY_URL =
      'https://cdn.jsdelivr.net/gh/googlefonts/roboto@v2.138/src/hinted/Roboto-Regular.ttf';
  String ICO_FONT_FAMILY_ICONS = 'common';
  String Prime_FONT_FAMILY_ICONS = 'primeicons';
  String FONT_FAMILY_ICON_URL =
      'https://dev.saeed.projects.roaa.tech/assets/fonts/icomoon/icomoon.ttf?iefix';

  String authHeader = 'Authorization';
  String imageLogo = "assets/images/osos.png";

// Languages
  String langEN = 'en';
  String langAR = 'ar';
  String lang = 'lang';

  /// Pagination
  int paginationLimit = 16;
  int paginationSkip = 0;

  BorderRadius appBorderRadius = BorderRadius.all(Radius.circular(5));
}
