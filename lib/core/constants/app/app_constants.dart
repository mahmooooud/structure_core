// Keys

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/model/app_token_model/app_token_model.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'package:structure_core/core/net/net.dart';
import 'package:structure_core/core/result/result.dart';


class ApplicationConstants {
  static const TITLE_APP_NAME = 'structure_core';
  static const KEY_LANGUAGE = 'language';
  static const KEY_TOKEN = 'token';
  static const HEADER_BEARER = 'bearer';
  static const ID_TOKEN = 'idToken';
  static const USER_DATA = 'userData';
  static const USER_DATA_MODEL = 'userDataModel';
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

  static const OrgBaseURL = 'OrgBaseURL';
  static const TenantCode = 'TenantCode';
  static const CONTACT_US_EMAIL = 'ContactUsEmail';
  static const HAS_VACATION = 'HasVacation';
  static const HAS_FINGER_PRINT_REQUEST = 'HasFingerPrintRequest';
  static const HAS_EXCUSE_REQUEST = 'HasExcuseRequest';
  static const HAS_STATEMENT_REQUEST = 'HasStatementRequest';
  static const HAS_REMOTE_WORK = 'HasRemoteWork';
  static const HAS_JOB_MISSION = 'HasJobMission';
  static const HAS_TRANING_MISSION = 'HasTrainingMission';
  static const HAS_EMPLOYEE_REQUEST = 'HasEmployeesRequest';
  static const HAS_MY_REQUESTS = 'HasMyRequests';
  static const HAS_ATTENDANCE_REPORT = 'HasAttendanceReport';
  static const CONTACT_US_PHONE = 'ContactUsPhone';
  static const FaceMatchURL = 'FaceMatchURL';

  static const FONT_FAMILY = 'osos';
  static const FONT_FAMILY_URL =
      'https://cdn.jsdelivr.net/gh/googlefonts/roboto@v2.138/src/hinted/Roboto-Regular.ttf';
  static const ICO_FONT_FAMILY_ICONS = 'common';
  static const Prime_FONT_FAMILY_ICONS = 'primeicons';
  static const FONT_FAMILY_ICON_URL =
      'https://dev.saeed.projects.roaa.tech/assets/fonts/icomoon/icomoon.ttf?iefix';

  static const authHeader = 'Authorization';
  static const tenant = 'Tenant';
  static const timeZoneHeader = 'USER-TIMEZONE';
  static const imageLogo = "assets/images/osos.png";

// Languages
  static const langEN = 'en';
  static const langAR = 'ar';
  static const lang = 'lang';

  /// Pagination
  static const paginationLimit = 16;
  static const paginationSkip = 0;

  static const BorderRadius appBorderRadius = BorderRadius.all(Radius.circular(5));
}
