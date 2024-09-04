import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/extension/context.dart';

abstract class AppPopupHelper {
  static PopupMenuItem<T> buildPopupMenuItem<T>({
    required BuildContext context,
    double size = 20,
    required String iconPath,
    required String title,
    required VoidCallback onPressed,
  }) {
    return PopupMenuItem<T>(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      onTap: onPressed,
      child: Row(
        children: [
          SizedBox.square(
              dimension: size,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(iconPath,
                      color: context.colors.black, width: size, height: size),
                ],
              )),
          const SizedBox(width: 8),
          Text(title,
              style: TextStyle(
                  color: context.colors.black, fontSize: 12.sp, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
