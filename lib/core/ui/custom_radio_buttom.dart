import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/extension/context.dart';

class CustomRadio extends StatelessWidget {
  final int value;
  final int groupValue;
  final Color? selctedColor;
  final double? size;
  final void Function(int) onChanged;
  const CustomRadio(
      {Key? key,
      required this.value,
      required this.groupValue,
      this.selctedColor,
      this.size = 18,
      required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool selected = (value == groupValue);

    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
         padding: EdgeInsets.all(1.r),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: selected
                    ? (selctedColor ?? context.colors.primary)
                    : context.colors.grey,
                width: 2),
            color: context.colors.white),
        child: Center(
          child: Icon(
            Icons.circle,
            size: size??18.sp,
            color: selected
                ? (selctedColor ?? context.colors.primary)
                : context.colors.white,
          ),
        ),
      ),
    );
  }
}
