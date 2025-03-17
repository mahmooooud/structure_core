import 'dart:async';

import 'package:flutter/material.dart';

class ChangeOrderStatusProvider extends ChangeNotifier {
  static final ChangeOrderStatusProvider _instance = ChangeOrderStatusProvider._internal();

  static ChangeOrderStatusProvider get instance => _instance;

  ChangeOrderStatusProvider._internal();

  String orderUniqueId = "";
  bool isUnassigned = false;

  void changeOrderStatus(String uniqueId){
    orderUniqueId = uniqueId;
    notifyListeners();
  }

  void changeUnassigned(bool unassigned){
    isUnassigned = unassigned;
    notifyListeners();
  }
}
