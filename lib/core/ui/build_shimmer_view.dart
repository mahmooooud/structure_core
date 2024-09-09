import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BuildShimmerView extends StatelessWidget {
  final double? width;
  final double height;
  final BoxShape? boxShape;
  final EdgeInsets? margin;
  final Color? hColor;
  final Color? bColor;

  const BuildShimmerView(
      {Key? key,
      this.width,
      this.boxShape,
      this.margin,
      required this.height,
      this.hColor,
      this.bColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: bColor ?? Theme.of(context).colorScheme.primary.withOpacity(.5),
      highlightColor: hColor ?? Theme.of(context).colorScheme.primary.withOpacity(.3),
      child: Container(
        margin: margin,
        width: width ?? MediaQuery.of(context).size.width,
        height: height.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(.3),
          borderRadius: BorderRadius.circular(10.r),
          shape: boxShape ?? BoxShape.rectangle,
        ),
      ),
    );
  }
}
