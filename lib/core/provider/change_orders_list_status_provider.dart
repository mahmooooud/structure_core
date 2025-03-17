import 'dart:async';

import 'package:flutter/material.dart';

class ChangeOrdersListStatusProvider extends ChangeNotifier {
  static final ChangeOrdersListStatusProvider _instance =
      ChangeOrdersListStatusProvider._internal();

  static ChangeOrdersListStatusProvider get instance => _instance;

  ChangeOrdersListStatusProvider._internal();

  String orderUniqueId = "";

  void changeOrderStatus(String uniqueId) {
    orderUniqueId = uniqueId;
    notifyListeners();
  }
}
