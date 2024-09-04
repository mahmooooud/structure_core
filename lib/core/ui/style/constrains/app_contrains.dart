import 'package:flutter/material.dart';

abstract class AppConstrains {
  static BoxConstraints get textFieldConstrains =>
      const BoxConstraints(minHeight: 42, maxHeight: 42);
}
