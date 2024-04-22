import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/localization/translate.dart';
import 'package:structure_core/core/ui/app_button.dart';

class EmptyRecordsView extends StatelessWidget {
  final Function() onTap;

  const EmptyRecordsView({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height.h,
      width: MediaQuery.of(context).size.width.w,
      color: context.colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Gaps.vGap24,
              Text(
                Translate.s.emptyRecords,
                style: context.textTheme.headline3?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              Gaps.vGap16,
              // Text(
              //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
              //   style: context.textTheme.subtitle2?.copyWith(color: context.colors.titleGrey),
              //   textAlign: TextAlign.center,
              // ),
            ],
          ),
          Gaps.vGap32,
          Column(
            children: [
              BouncingWidget(
                child: TextButton(
                  style: Theme.of(context).textButtonTheme.style,
                  onPressed: onTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 20.sp,
                        color: context.colors.white,
                      ),
                      Gaps.hGap10,
                      Text(
                        '',
                        style: context.textTheme.headline6!.copyWith(
                          color: context.colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
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
