import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/app_button.dart';
import 'package:ndf/res.dart';

class NoResultView extends StatelessWidget {
  final Function() onRefresh;

  const NoResultView({Key? key, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Gaps.vGap16,
              Text(
                Translate.s.noResult,
                style: context.textTheme.titleLarge?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              Gaps.vGap16,
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                style: context.textTheme.displaySmall
                    ?.copyWith(color: context.colors.titleGrey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              AppTextButton(
                onPressed: onRefresh,
                text: Translate.s.refresh,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Text(
                    Translate.s.goHome,
                    style: context.textTheme.displaySmall
                        ?.copyWith(color: context.colors.titleGrey),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
