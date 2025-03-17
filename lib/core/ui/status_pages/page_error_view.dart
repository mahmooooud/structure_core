import 'package:flutter/material.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/app_button.dart';

class PageErrorView extends StatelessWidget {
  final VoidCallback? action;
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: context.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Translate.s.pageError,
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.colors.primary,
                ),
              ),
              Gaps.vGap16,
              Text(
                errorMessage,
                style: context.textTheme.bodyMedium
                    ?.copyWith(color: context.colors.titleGrey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Visibility(
          visible: action != null,
          replacement: Gaps.empty,
          child: AppTextButton(
            onPressed: () {
              action!();
            },
            text: actionName ?? Translate.s.back,
            width: MediaQuery.of(context).size.width * .5,
          ),
        ),
      ],
    );
  }
}
