import 'dart:async';
import 'dart:convert';

import 'package:ndf/core/utils/enum.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../common/notify_count.dart';

@lazySingleton
class GlobalNotification {
  static final StreamController<Map<String, dynamic>>
      _onMessageStreamController = StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  void setupNotification() async {
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    const android = AndroidInitializationSettings("@mipmap/ic_launcher");
    const ios = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true);
    const initSettings = InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(initSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {
      final _data = json.decode("${notificationResponse.payload}");
      print('payload >> ${notificationResponse.payload}');
      // GetIt.I<AppRouter>().push(NotificationScreenRoute());
    }, onDidReceiveBackgroundNotificationResponse: notificationTapBackground);
    await Firebase.initializeApp();
    final settings = await messaging.requestPermission(provisional: true);
    print('User granted permission: ${settings.authorizationStatus}');
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      messaging.getToken().then((token) {
        print("token ======> $token");
      });
      messaging.setForegroundNotificationPresentationOptions();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        // CustomToast.showSimpleToast(msg: 'Notification Clicked');
        print("_____________________Message data:${message.data}");
        print(
            "_____________________notification:${message.notification?.title}");
        if ((message.notification?.title?.isNotEmpty ?? false)) {
          _showLocalNotification(message);
          _onMessageStreamController.add(message.data);
          NotifyCount.instance
              .changeNotifyCount(NotifyCount.instance.notifyCount + 1);
        }
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('OnMessageOpenedApp event was published!');
        // CustomToast.showSimpleToast(msg: 'Notification Clicked');
        flutterNotificationClick(json.encode(message.data));
      });

      //This method will call when the app is in kill state
      FirebaseMessaging.instance
          .getInitialMessage()
          .then((RemoteMessage? message) {
        if (message != null) {
          Future.delayed(const Duration(seconds: 8), () {
            flutterNotificationClick(json.encode(message.data));
          });
        }
      });

      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }
  }

  static void notificationTapBackground(
      NotificationResponse notificationResponse) async {
    final _data = json.decode("${notificationResponse.payload}");
    print('payload >>>> ${notificationResponse.payload}');
    // GetIt.I<AppRouter>().push(NotificationScreenRoute());
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");

    // await Firebase.initializeApp();
    //  flutterNotificationClick(json.encode(message.data));
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  void _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    final android = AndroidNotificationDetails(
      "${DateTime.now()}",
      "Default",
      priority: Priority.high,
      importance: Importance.max,
      shortcutId: DateTime.now().toIso8601String(),
    );
    const ios = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    final _platform = NotificationDetails(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        _platform,
        payload: json.encode(message.data));
  }

  static Future flutterNotificationClick(String? payload) async {
    final _data = json.decode("$payload");
    // GetIt.I<AppRouter>().push(NotificationScreenRoute());
  }
}
