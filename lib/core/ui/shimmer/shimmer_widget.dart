import 'package:flutter/material.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  final bool isShow;
  final Color? color;

  const ShimmerWidget(
      {super.key, required this.child, this.isShow = true, this.color});

  @override
  Widget build(BuildContext context) {
    if (isShow) {
      return Shimmer.fromColors(
        baseColor: context.colors.black.withOpacity(.05),
        highlightColor: context.colors.black.withOpacity(.1),
        child: Container(
            color: color ?? Theme.of(context).backgroundColor, child: child),
      );
    } else {
      return child;
    }
  }
}