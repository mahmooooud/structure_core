import 'dart:math' as math;

import 'package:flutter/material.dart';

class HorizontalMirror extends StatelessWidget {
  final Widget child;
  final TextDirection originalTextDir;

  const HorizontalMirror({Key? key, required this.child, this.originalTextDir = TextDirection.ltr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentDirectionality = Directionality.of(context);
    final direct = currentDirectionality == originalTextDir;
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(direct ? 0.0 : math.pi),
      child: child,
    );
  }
}
