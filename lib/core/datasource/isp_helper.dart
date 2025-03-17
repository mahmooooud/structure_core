import 'package:ndf/feature/auth/data/models/user_model/login_request_model.dart';
import 'package:ndf/feature/auth/data/models/user_model/user_model.dart';

abstract class ISpHelper {
  /// deleteToken
  Future<void> deleteToken();

  /// deleteFcmToken
  Future<void> deleteFcmToken();

  /// persistToken
  Future<void> writeToken(String token, String type);

  /// persistToken
  Future<void> writeIdToken(String token);

  /// persistFcmToken
  Future<void> writeFcmToken(String token);

  /// refreshToken
  Future<void> writeRefreshToken(String token);

  /// save user Data

  /// read authToken
  /// if returns null that's means there no SP instance
  Future<String?> get authToken;

  Future<String?> get authTokenType;

  Future<String?> get refreshToken;

  Future<String?> get idToken;

  /// read fcmToken
  /// if returns null that's means there no SP instance
  Future<String?> get fcmToken;

  /// check if hasToken or not
  Future<bool> get hasToken;

  /// check if hasToken or not

  /// check if hasFcmToken or not
  Future<bool> get hasFcmToken;

  /// should be set true after the first time run the app
  Future<void> writeFirstRunApp(bool value);

  /// if null or false so user first time run the app
  Future<bool> get isFirstRunApp;

  /// should be set true after login as guard
  Future<void> writeIsGuard(bool value);

  /// if null or false so not login as guard
  Future<bool> get isGuard;

  /// should be set true after the first time run the app
  Future<void> writeIsAnonymousToken(bool value);
  Future<void> writeUserBiometricData(LoginRequestModel value);
  Future<void> deleteUserBiometricData();
  Future<LoginRequestModel?> readUserBiometricData();

  /// if null or false so user first time run the app
  Future<bool> get isAnonymousToken;

  /// write the application language in shared preferences
  Future<void> writeAppLang(String value);

  /// to save font size
  Future<void> writeFontSize(double value);

  /// get the application language from shared preferences
  Future<String?> get readAppLang;

  /// save offline requests
  Future<void> writeOfflineRequests(String data);

  /// should be set true after user checked in
  Future<void> writeIsCheckedIn(bool value);

  /// if null or false so user not checked in
  Future<bool> get isCheckedIn;

  /// should be set true after user checked out
  Future<void> writeIsCheckedOut(bool value);

  /// if null or false so user not checked out
  Future<bool> get isCheckedOut;

  /// should be set date after user checked
  Future<void> writeCheckedDate(DateTime dateTime);

  /// should return checked date
  Future<DateTime> get getCheckedDate;

  /// should be set max time to check in
  Future<void> writeMaxCheckIn(String time);

  /// should return max time to check in
  Future<String> get getMaxCheckIn;

  /// get font size
}
