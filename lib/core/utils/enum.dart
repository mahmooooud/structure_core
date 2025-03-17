import 'dart:ui';

import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/localization/translate.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTypeEnum {
  static String customer = "Customer";
  static String provider = "ServiceProvider";
  static String admin = "Admin";
}

class RequestTypeEnum {
  static String pending = Translate.s.pending;
  static String onTheWay = Translate.s.on_the_way;
  static String complete = Translate.s.Complete;
}

class RadiusEnum {
  static double radius_sm = 6.r;
  static double radius_md = 8.r;
  static double radius_xl = 12.r;
  static double radius_lr = 16.r;
}

class OrderStatusEnum {
  static const String all = "";
  static const String active = "Active";
  static const String completed = "Completed";
  static const String pending = "NotStarted";
  static const String canceled = "Canceled";

  /// Returns the color associated with the given status string.
  /// The colors are based on the colors used in the design provided by the designer.
  /// The colors are:
  /// - Active: #DC6803
  /// - Pending: #DC6803
  /// - Completed: #079455
  /// - Canceled: #94120F
  Color getStatusColor(String status) {
    switch (status) {
      case active:
        return const Color(0xffBC6F36);
      case pending:
        return const Color(0xffBC6F36);
      case completed:
        return const Color(0xff079455);
      case canceled:
        return const Color.fromARGB(255, 148, 12, 7);
      default:
        return const Color(0xffBC6F36);
    }
  }

  /// Get the title of the status based on the given status string.
  ///
  /// The status title is translated and is one of the following:
  /// - [active]: [Translate.s.on]
  /// - [pending]: [Translate.s.not_started]
  /// - [completed]: [Translate.s.completed]
  /// - [canceled]: [Translate.s.canceled]
  /// - Otherwise, [Translate.s.on]
  ///
  /// Returns the translated status title.
  String getStatusTitle(String status) {
    switch (status) {
      case active:
        return Translate.s.on_the_way;
      case pending:
        return Translate.s.pending;
      case completed:
        return Translate.s.completed;
      case canceled:
        return Translate.s.cancelled;
      default:
        return Translate.s.on_the_way;
    }
  }
}
