import 'package:flutter/material.dart';

abstract class AppShadows {
  static BoxShadow get shadow1 =>
      const BoxShadow(
          color: Color.fromRGBO(134, 142, 160, 0.159),
          offset: Offset(0, 0),
          blurRadius: 0);
}