import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:ndf/core/di/service_locator.dart';
import 'package:ndf/core/notification/global_notification.dart';

// import 'package: mobilefoundation/authorization_manager.dart';
import 'app.dart';
import 'core/common/appConfig.dart';
import 'env/config_reader.dart';
import 'env/enviroment.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  await ConfigReader.initialize(env);
  switch (env) {
    case Environment.dev:
      env = "DEV";
      break;
    case Environment.stage:
      env = "QA";
      break;
    case Environment.prod:
      env = "";
      debugPrint = (String? message, {int? wrapWidth}) {};
      break;
  }

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  await configureDependencies();
  // GetIt.I<FirebaseAnalyticsHelper>().analytics.setConsent(
  //     adStorageConsentGranted: false, analyticsStorageConsentGranted: true);
  // Init Language.
  // await AppConfig().fetchLocale();
  //await Firebase.initializeApp();
  // await LangReader.initialize();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
  ));

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]);
  await ScreenUtil.ensureScreenSize();
  // await Firebase.initializeApp();

  // GetIt.instance.get<GlobalNotification>().setupNotification();
  await AppConfig().initApp(env);
  runApp(App());
}
// void obtainAccessToken(){
//   MFAuthorizationManager authManager = new MFAuthorizationManager();
//   authManager.obtainAccessToken().then((accessToken) {
//     print("Token is " + accessToken.value);
//   }).catchError((error) {
//     print("Error in obtain access token. Reason: " + error.toString());
//   });
//
// }

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
