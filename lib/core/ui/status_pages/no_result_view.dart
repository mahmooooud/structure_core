import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/localization/translate.dart';
import 'package:structure_core/core/ui/app_button.dart';

class NoResultView extends StatelessWidget {
  final Function() onRefresh;

  const NoResultView({Key? key, required this.onRefresh}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height.h,
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
                style: context.textTheme.headline3?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              Gaps.vGap16,
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                style: context.textTheme.subtitle2
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
                    style: context.textTheme.subtitle2
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
