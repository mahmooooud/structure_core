// Keys

import 'package:flutter/material.dart';

class ApplicationConstants {
  static const TITLE_APP_NAME = 'ndf';
  static const KEY_LANGUAGE = 'language';
  static const KEY_TOKEN = 'token';
  static const HEADER_BEARER = 'bearer';
  static const ID_TOKEN = 'idToken';
  static const USER_DATA = 'userData';
  static const Guard_DATA = 'guardData';
  static const FONT_SIZE = 'font-size';
  static const REFRESH_TOKEN = 'refresh_token';
  static const KEY_FIREBASE_TOKEN = 'firebase_token';
  static const KEY_FIRST_START = 'First_start';
  static const KEY_IS_Guard = 'is_guard';
  static const KEY_IS_CHECKED_IN = 'is_checked_in';
  static const KEY_IS_CHECKED_OUT = 'is_checked_out';
  static const KEY_MAX_CHECK_IN = 'max_time_to_checkInt';
  static const KEY_CHECKED_DATE = 'checked_date';
  static const IS_ANONYMOUS_TOKEN = 'IsAnonymousToken';
  static const OFFLINE_REQUESTS = 'offline_requests';
  static const timeZoneHeader = 'USER-TIMEZONE';

  static const KEY_USER_BIOMETRIC_DATA = 'KEY_USER_BIOMETRIC_DATA';

  static const FONT_FAMILY = 'ndf';
  static const FONT_FAMILY_URL =
      'https://cdn.jsdelivr.net/gh/googlefonts/roboto@v2.138/src/hinted/Roboto-Regular.ttf';
  static const ICO_FONT_FAMILY_ICONS = 'common';
  static const Prime_FONT_FAMILY_ICONS = 'primeicons';
  static const FONT_FAMILY_ICON_URL =
      'https://dev.saeed.projects.roaa.tech/assets/fonts/icomoon/icomoon.ttf?iefix';

  static const authHeader = 'Authorization';
  static const currentUserId = 'CurrentUserId';
  static const imageLogo = "assets/images/osos.png";

// Languages
  static const langEN = 'en';
  static const langAR = 'ar';
  static const lang = 'lang';

  /// Pagination
  static const paginationLimit = 16;
  static const paginationSkip = 0;

  static const BorderRadius appBorderRadius =
      BorderRadius.all(Radius.circular(5));
}
