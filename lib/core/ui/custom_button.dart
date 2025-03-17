import 'package:ndf/core/utils/enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/custom_toast.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color backGroundColor;
  final Color? borderColor;
  final double elevation;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? padding;
  final BoxDecoration? decoration;
  final bool isEnable;
  final String? disabledMessage;

  const CustomButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.backGroundColor = const Color(0xffE18541),
    this.elevation = 1,
    this.borderRadius,
    this.width,
    this.borderColor,
    this.height = 50,
    this.decoration,
    this.isEnable = true,
    this.padding,
    this.disabledMessage = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: decoration,
      child: TextButton(
          onPressed: isEnable
              ? onPressed
              : () {
                  if (disabledMessage!.isNotEmpty) {
                    CustomToast.showSnakeBar(disabledMessage,
                        type: ToastType.error);
                  }
                },
          // child: CustomText(text, textStyle: TextStyles.textSmall),
          child: child,
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: padding ?? 0.h),
            shape: decoration == null
                ? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        borderRadius ?? RadiusEnum.radius_md),
                    side: BorderSide(
                        color: isEnable
                            ? borderColor ?? backGroundColor
                            : Colors.transparent))
                : null,
            backgroundColor: isEnable ? backGroundColor : Color(0xffF5F5F5),
            elevation: decoration == null ? elevation : null,
          )),
    );
  }
}
