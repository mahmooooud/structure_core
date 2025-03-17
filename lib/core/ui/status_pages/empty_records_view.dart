import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/res.dart';

class EmptyRecordsView extends StatelessWidget {
  final Function() onTap;
  final String? title;
  final String? icon;
  const EmptyRecordsView({Key? key, required this.onTap, this.title, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: context.colors.white,
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Column(
          children: [
            SvgAssets.getWidget(icon ?? Res.emptyState,
                fit: BoxFit.cover, height: 150),
            Gaps.vGap32,
            Center(
              child: CustomText(
                title ?? Translate.s.noResult,
                textStyle: context.textTheme.bodySmall!
                    .copyWith(color: context.colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
