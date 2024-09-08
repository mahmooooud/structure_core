import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/localization/translate.dart';
import 'package:structure_core/core/ui/app_button.dart';

class PageErrorView extends StatelessWidget {
  final Function()? action;
  final String? actionName;
  final String errorMessage;

  const PageErrorView({
    Key? key,
    this.action,
    this.actionName,
    required this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height.h,
      width: MediaQuery.of(context).size.width.w,
      color: context.colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Gaps.vGap24,
                Text(
                  Translate.s.pageError,
                  style: context.textTheme.headline3?.copyWith(
                    color: context.colors.primary,
                  ),
                ),
                Gaps.vGap16,
                Text(
                  errorMessage,
                  style: context.textTheme.subtitle2
                      ?.copyWith(color: context.colors.titleGrey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Gaps.vGap32,
            Column(
              children: [
                AppTextButton(
                  onPressed: action ?? ()=>AutoRouter.of(context).pop(),
                  text: actionName ?? 'back',
                  width: MediaQuery.of(context).size.width.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
