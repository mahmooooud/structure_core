import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class NotifyCount extends ChangeNotifier {
  static final NotifyCount _instance = NotifyCount._internal();

  static NotifyCount get instance => _instance;

  NotifyCount._internal();

  int notifyCount = 0;

  void changeNotifyCount(int value) {
    notifyCount = value;
    notifyListeners();
  }


}
