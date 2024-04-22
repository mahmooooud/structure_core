import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/extension/context.dart';

class SelectedOptionText extends StatelessWidget {
  final String text;

  const SelectedOptionText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: context.colors.secondary, fontSize: 12.sp, fontWeight: FontWeight.w400));
  }
}
