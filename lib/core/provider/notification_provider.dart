import 'dart:async';

import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  static final NotificationProvider _instance = NotificationProvider._internal();

  static NotificationProvider get instance => _instance;

  NotificationProvider._internal();

  bool hasUnReadNotification = false;

  void toggleHasUnReadNotification(bool hasNotification){
    hasUnReadNotification = hasNotification;
    notifyListeners();
  }

}
