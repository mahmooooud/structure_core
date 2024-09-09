import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/ui/app_button.dart';

class NoResultView extends StatelessWidget {
  final Function() onRefresh;
  final String noResult;
  final String refreshText;
  final String actionText;
  const NoResultView({Key? key, required this.onRefresh, required this.noResult, required this.refreshText, required this.actionText}) : super(key: key);

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
                noResult,
                style: Theme.of(context).textTheme.headline3?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Gaps.vGap16,
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                style: Theme.of(context).textTheme.subtitle2
                    ?.copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              AppTextButton(
                onPressed: onRefresh,
                text: refreshText,
                width: MediaQuery.of(context).size.width,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Text(
                    actionText,
                    style: Theme.of(context).textTheme.subtitle2
                        ?.copyWith(color: Colors.grey),
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
