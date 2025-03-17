import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ndf/feature/auth/data/models/user_model/login_request_model.dart';
import 'package:ndf/feature/auth/data/models/user_model/user_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'isp_helper.dart';

@Injectable(as: ISpHelper)
class SPHelper implements ISpHelper {
  @override

  /// deleteToken
  Future<void> deleteToken() async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.remove(ApplicationConstants.KEY_TOKEN);
  }

  @override

  /// deleteFcmToken
  Future<void> deleteFcmToken() async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.remove(ApplicationConstants.KEY_FIREBASE_TOKEN);
  }

  @override

  /// persistToken
  Future<void> writeToken(String token, String type) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.KEY_TOKEN, token);
    await prefs.setString(ApplicationConstants.HEADER_BEARER, type);
  }

  @override

  /// persistToken
  Future<void> writeRefreshToken(String token) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.REFRESH_TOKEN, token);
  }

  @override

  /// persistFcmToken
  Future<void> writeFcmToken(String token) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.KEY_FIREBASE_TOKEN, token);
  }

  @override

  /// read authToken
  /// if returns null that's means there no SP instance
  Future<String?> get authToken async {
    final prefs = GetIt.I<SharedPreferences>();
    return prefs.getString(ApplicationConstants.KEY_TOKEN);
  }

  @override

  /// read authToken
  /// if returns null that's means there no SP instance
  Future<String?> get authTokenType async {
    final prefs = GetIt.I<SharedPreferences>();
    return prefs.getString(ApplicationConstants.HEADER_BEARER);
  }

  /// read id token
  Future<String?> get idToken async {
    final prefs = GetIt.I<SharedPreferences>();
    return prefs.getString(ApplicationConstants.ID_TOKEN);
  }

  @override
  Future<String?> get refreshToken async {
    final prefs = GetIt.I<SharedPreferences>();
    return prefs.getString(ApplicationConstants.REFRESH_TOKEN);
  }

  @override

  /// read fcmToken
  /// if returns null that's means there no SP instance
  Future<String?> get fcmToken async {
    final prefs = GetIt.I<SharedPreferences>();
    return prefs.getString(ApplicationConstants.KEY_FIREBASE_TOKEN);
  }

  @override

  /// check if hasToken or not
  Future<bool> get hasToken async {
    final prefs = GetIt.I<SharedPreferences>();
    String? token = prefs.getString(ApplicationConstants.KEY_TOKEN);
    if (token != null) return true;
    return false;
  }

  @override

  /// check if hasFcmToken or not
  Future<bool> get hasFcmToken async {
    final prefs = GetIt.I<SharedPreferences>();
    String? token = prefs.getString(ApplicationConstants.KEY_FIREBASE_TOKEN);
    if (token != null && token.isNotEmpty) return true;
    return false;
  }

  @override
  Future<void> writeFirstRunApp(bool value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool(ApplicationConstants.KEY_FIRST_START, value);
  }

  @override
  Future<bool> get isFirstRunApp async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getBool(ApplicationConstants.KEY_FIRST_START);
    if (result == null) return true;
    return result;
  }

  @override
  Future<void> writeAppLang(String value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.KEY_LANGUAGE, value);
  }

  @override
  Future<String?> get readAppLang async =>
      GetIt.I<SharedPreferences>().getString(ApplicationConstants.KEY_LANGUAGE);

  @override
  Future<void> writeIdToken(String token) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.ID_TOKEN, token);
  }

  @override
  Future<void> writeFontSize(double value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setDouble(ApplicationConstants.FONT_SIZE, value);
  }

  @override
  Future<bool> get isAnonymousToken async {
    final prefs = GetIt.I<SharedPreferences>();
    bool? token = prefs.getBool(ApplicationConstants.IS_ANONYMOUS_TOKEN);
    if (token == null) return false;
    return token;
  }

  @override
  Future<void> writeIsAnonymousToken(bool value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool(ApplicationConstants.IS_ANONYMOUS_TOKEN, value);
  }

  @override
  // TODO: implement isGuard
  Future<bool> get isGuard async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getBool(ApplicationConstants.KEY_IS_Guard);
    if (result == null) return false;
    return result;
  }

  @override
  Future<void> writeIsGuard(bool value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool(ApplicationConstants.KEY_IS_Guard, value);
  }

  @override
  Future<void> writeOfflineRequests(String data) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.OFFLINE_REQUESTS, data);
  }

  @override
  // TODO: implement getCheckedDate
  Future<DateTime> get getCheckedDate async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getString(ApplicationConstants.KEY_CHECKED_DATE);
    var dateFormat = DateFormat('yyyy-MM-dd', 'en');

    if (result == null) return dateFormat.parse(DateTime.now().toString());
    return result.parsDate!;
  }

  @override
  Future<bool> get isCheckedIn async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getBool(ApplicationConstants.KEY_IS_CHECKED_IN);
    if (result == null) return false;
    return result;
  }

  @override
  // TODO: implement isCheckedOut
  Future<bool> get isCheckedOut async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getBool(ApplicationConstants.KEY_IS_CHECKED_OUT);
    if (result == null) return false;
    return result;
  }

  @override
  Future<void> writeCheckedDate(DateTime dateTime) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.KEY_CHECKED_DATE,
        DateFormat('yyyy-MM-dd', 'en').format(dateTime));
  }

  @override
  Future<void> writeIsCheckedIn(bool value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool(ApplicationConstants.KEY_IS_CHECKED_IN, value);
  }

  @override
  Future<void> writeIsCheckedOut(bool value) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setBool(ApplicationConstants.KEY_IS_CHECKED_OUT, value);
  }

  @override
  // TODO: implement getMaxCheckIn
  Future<String> get getMaxCheckIn async {
    final prefs = GetIt.I<SharedPreferences>();
    var result = prefs.getString(ApplicationConstants.KEY_MAX_CHECK_IN);
    if (result == null) return '09:00';
    return result;
  }

  @override
  Future<void> writeMaxCheckIn(String time) async {
    final prefs = GetIt.I<SharedPreferences>();
    await prefs.setString(ApplicationConstants.KEY_MAX_CHECK_IN, time);
  }

  @override
  Future<void> writeUserBiometricData(LoginRequestModel value) async {
    final storage = FlutterSecureStorage();
    await storage.write(
        key: ApplicationConstants.KEY_USER_BIOMETRIC_DATA,
        value: jsonEncode(value.toJson()));
  }

  @override
  Future<LoginRequestModel?> readUserBiometricData() async {
    final storage = FlutterSecureStorage();
    final jsonData =
        await storage.read(key: ApplicationConstants.KEY_USER_BIOMETRIC_DATA);
    if (jsonData != null) {
      return LoginRequestModel.fromJson(jsonDecode(jsonData));
    } else {
      return null;
    }
  }

  @override
  Future<void> deleteUserBiometricData() async {
    final storage = FlutterSecureStorage();
    await storage.delete(key: ApplicationConstants.KEY_USER_BIOMETRIC_DATA);
  }
}
