import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/custom_button.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:flutter/material.dart';

class ConfirmActionDialog extends StatelessWidget {
  const ConfirmActionDialog({
    super.key,
    required this.title,
    required this.msg,
    this.IstwoAction = true,
    required this.firstAction,
    required this.secondAction,
    this.firstActionColor,
  });
  final String title;
  final String msg;
  final bool IstwoAction;
  final Function firstAction;
  final Color? firstActionColor;
  final Function secondAction;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // DialogRowTitle(title: ""),
        // Gaps.vGap16,
        CustomText(
          title,
          textStyle: context.textTheme.bodyMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Gaps.vGap12,
        CustomText(
          msg,
          textStyle: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400, color: context.colors.iconGrey),
        ),
        Gaps.vGap16,
        CustomButton(
          onPressed: () {
            firstAction.call();
          },
          backGroundColor: firstActionColor ?? context.colors.green,
          child: CustomText(
            Translate.s.confirm,
            textStyle: context.textTheme.bodyMedium!
                .copyWith(color: context.colors.white),
          ),
        ),
        if (IstwoAction) Gaps.vGap16,
        if (IstwoAction)
          CustomButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            backGroundColor: Colors.transparent,
            elevation: 0,
            decoration: BoxDecoration(
                border: Border.all(color: context.colors.titleGrey),
                borderRadius: BorderRadius.circular(30)),
            child: CustomText(
              Translate.s.cancel,
              textStyle: context.textTheme.bodyMedium!
                  .copyWith(color: context.colors.titleGrey),
            ),
          ),
      ],
    );
  }
}
