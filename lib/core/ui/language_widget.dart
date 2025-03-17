import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageWidget extends StatelessWidget {
  final bool hasBackground;
  const LanguageWidget({super.key, this.hasBackground = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: hasBackground
          ? BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: context.colors.grey, width: 1))
          : null,
      padding: hasBackground ? const EdgeInsets.all(8) : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgAssets.getWidget(
            Res.global,
            fit: BoxFit.contain,
            width: 18,
            height: 18,
          ),
          Gaps.hGap4,
          CustomText(
            AppConfig().currentLanguageCode == 'ar' ? "En" : 'Ar',
            textStyle: context.textTheme.bodySmall!
                .copyWith(color: context.colors.white, fontSize: 14),
          )
        ],
      ),
    ).press(onTap: () {
      AppConfig().changeLanguage(
          AppConfig().currentLanguageCode.toLowerCase() == 'ar' ? "en" : "ar");
    });
  }
}
