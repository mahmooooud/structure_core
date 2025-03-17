import 'package:ndf/core/common/extension/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerView extends StatelessWidget {
  final double? width;
  final double height;
  final double? radius;
  final BoxShape? boxShape;
  final EdgeInsets? margin;
  final Color? hColor;
  final Color? bColor;
  final Color? cColor;

  const BuildShimmerView(
      {Key? key,
      this.width,
      this.boxShape,
      this.margin,
      required this.height,
      this.hColor,
      this.bColor,
      this.radius,
      this.cColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: bColor ?? context.colors.primary.withOpacity(.5),
      highlightColor: hColor ?? context.colors.primary.withOpacity(.3),
      child: Container(
        margin: margin,
        width: width ?? MediaQuery.of(context).size.width,
        height: height.h,
        decoration: BoxDecoration(
          borderRadius:
              radius != null ? BorderRadius.circular(radius ?? 0) : null,
          color: cColor ?? context.colors.primary.withOpacity(.3),
          shape: boxShape ?? BoxShape.rectangle,
        ),
      ),
    );
  }
}
