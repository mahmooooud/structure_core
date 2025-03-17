import 'package:ndf/core/common/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  final bool isShow;
  final Color? color;
  final double? radius;

  const ShimmerWidget(
      {super.key,
      required this.child,
      this.isShow = true,
      this.color,
      this.radius});

  @override
  Widget build(BuildContext context) {
    if (isShow) {
      return Shimmer.fromColors(
        baseColor: context.colors.borderGrey,
        highlightColor: context.colors.black.withOpacity(.1),
        child: Container(
            decoration: BoxDecoration(
                color: color ?? context.colors.background,
                borderRadius:
                    radius != null ? BorderRadius.circular(radius!) : null),
            child: child),
      );
    } else {
      return child;
    }
  }
}
