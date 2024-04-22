import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/extension/context.dart';

class HLine extends StatelessWidget {
  HLine({Key? key, this.verticalPadding, this.color,this.thicknes}) : super(key: key);
  double? verticalPadding;
  double? thicknes;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding ?? 10.h),
      child: Container(
        width: double.infinity,
        height: thicknes ?? 1,
        color: color ?? context.colors.grey3,
      ),
    );
  }
}
class VLine extends StatelessWidget {
  const VLine({Key? key, this.color, this.thik, this.padd, this.height})
      : super(key: key);
  final Color? color;
  final double? thik;
  final double? padd;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padd ?? 10.h),
      child: Container(
        height: height ?? 32.h,
        width: thik ?? 2.w,
        color: color ?? context.colors.grey2,
      ),
    );
  }
}
