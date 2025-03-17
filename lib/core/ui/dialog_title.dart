import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/h_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogTitleWidget extends StatelessWidget {
  const DialogTitleWidget({
    super.key,
    required this.title,
    this.titleMsg,
    this.titleFontSize,
  });
  final String title;
  final String? titleMsg;
  final double? titleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              title,
              textStyle: context.textTheme.bodySmall!
                  .copyWith(fontSize: titleFontSize ?? 14.sp, height: 1),
            ),
            Icon(
              Icons.close,
              color: context.colors.grey,
            ).press(
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ),
        if (titleMsg != null)
          CustomText(
            titleMsg ?? "",
            textStyle: context.textTheme.displaySmall!.copyWith(
                color: context.colors.titleBlack, fontWeight: FontWeight.w400),
          ),
        HLine()
      ],
    );
  }
}
