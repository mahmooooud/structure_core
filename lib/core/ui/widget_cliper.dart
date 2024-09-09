import 'package:flutter/material.dart';

class WidgetCliper extends StatelessWidget {
  final double borderRadius;
  final Widget child;

  const WidgetCliper({Key? key, this.borderRadius = 18.0, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: child,
    );
  }
}
