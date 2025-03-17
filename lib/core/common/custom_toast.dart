import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastType { success, error, info }

class CustomToast {
  static Map<ToastType, Color> toastBgColors = {
    ToastType.success: const Color(0xff00C799),
    ToastType.error: Colors.red,
    ToastType.info: Colors.lightGreen,
  };

  CustomToast(String s);

  static void showSnakeBar(msg,
      {Color? color,
      Color? textColor,
      String? icon,
      ToastGravity? toastGravity,
      ToastType type = ToastType.error}) {
    BotToast.showCustomNotification(
        duration: const Duration(seconds: 2),
        toastBuilder: (cancelFunc) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 150),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7.h),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD5D7DA), width: 1),
                borderRadius: BorderRadius.circular(16).r,
                color: Colors.white,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        icon != null
                            ? SvgAssets.getWidget(icon,
                                width: 38.w, height: 38.h)
                            : SvgAssets.getWidget(
                                fit: BoxFit.contain,
                                type != ToastType.error
                                    ? Res.success
                                    : Res.error_toast,
                                width: 32.w,
                                height: 32.w),
                        const Icon(
                          Icons.close,
                          color: const Color(0xffBBBBBB),
                        )
                      ],
                    ),
                    Gaps.vGap8,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: CustomText(
                        msg,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: const Color(0xff535862)),
                      ),
                    ),
                  ]),
            ),
          );
        });
  }

  static void showSimpleToast(
      {required String msg,
      Color? color,
      Color? textColor,
      ToastType type = ToastType.error}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: color ?? toastBgColors[type],
        textColor: textColor ?? Colors.white,
        fontSize: 16.0);
  }
}
