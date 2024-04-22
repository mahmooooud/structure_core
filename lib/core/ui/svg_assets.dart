import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAssets {
  static SvgPicture getWidget(String assetName,
      {BoxFit? fit, Color? color, double? width, double? height}) {
    {
      return SvgPicture.asset(
        assetName,
        fit: fit ?? BoxFit.contain,
        color: color,
        width: width ?? 18.w,
        height: height ?? 18.h,
      );
    }
  }
}
