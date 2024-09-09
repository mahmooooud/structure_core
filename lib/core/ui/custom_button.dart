import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color backGroundColor;
  final double elevation;
  final double borderRadius;
  final double? width;
  final double? height;
  final double? padding;
  final BoxDecoration? decoration;

  const CustomButton(this.child, this.onPressed,
      {Key? key,
      this.backGroundColor = const Color(0xff008A76),
      this.elevation = 1,
      this.borderRadius = 7,
      this.width,
      this.height,
      this.decoration,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: padding ?? 10.h),
      width: width ?? double.infinity,
      decoration: decoration,
      child: TextButton(
          onPressed: onPressed,
          // child: CustomText(text, textStyle: TextStyles.textSmall),
          child: child,
          style: TextButton.styleFrom(
            shape: decoration == null
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  )
                : null,
            backgroundColor: backGroundColor,
            elevation: decoration == null ? elevation : null,
          )),
    );
  }
}
