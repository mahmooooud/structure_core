import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/ui/app_button.dart';

class PageErrorView extends StatelessWidget {
  final VoidCallback? action;
  final String? actionName;
  final String errorMessage;
  final String actionText;

  const PageErrorView({
    Key? key,
    this.action,
    this.actionName,
    required this.errorMessage,
    required this.actionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Gaps.vGap24,
                Text(
                  "Oops Page Error",
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Gaps.vGap16,
                Text(
                  errorMessage,
                  style: Theme.of(context).textTheme.subtitle2
                      ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Gaps.vGap32,
            Column(
              children: [
                AppTextButton(
                  onPressed: () => action ?? AutoRouter.of(context).pop(),
                  text: actionName ?? 'back',
                  width: MediaQuery.of(context).size.width,
                ),
                InkWell(
                  // onTap: () => AutoRouter.of(context)
                  //     .pushAndPopUntil(const HomeRoute(), predicate: (cxt) => false),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      actionText,
                      style: Theme.of(context).textTheme.subtitle2
                          ?.copyWith(color:  Theme.of(context).colorScheme.onPrimary),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
