import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget press ({required VoidCallback onTap})=> InkWell(
    onTap: onTap,
    child: this,
  );
}