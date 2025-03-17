import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_button.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:flutter/material.dart';

class TwoButtonRow extends StatelessWidget {
  const TwoButtonRow({
    super.key,
    required this.filledButtonTitle,
    required this.transparentButtonTitle,
    required this.transparentButtonAction,
    required this.filledButtonAction,
    this.transparentButtonColor,
    this.heigh,
    this.isTwoButton = true,
    this.isTransparentOnly = false,
    this.isFilledButtonEnabled = true,
    this.transparentPrefixIcon,
  });
  final Color? transparentButtonColor;
  final String filledButtonTitle;
  final String transparentButtonTitle;
  final String? transparentPrefixIcon;
  final Function() transparentButtonAction;
  final Function() filledButtonAction;
  final double? heigh;
  final bool isTwoButton;
  final bool isTransparentOnly;
  final bool? isFilledButtonEnabled;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isTwoButton || isTransparentOnly == true)
          Expanded(
            child: CustomButton(
              height: heigh ?? 40,
              onPressed: () async {
                transparentButtonAction.call();
              },
              backGroundColor: Colors.transparent,
              elevation: 0,
              decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          transparentButtonColor ?? context.colors.borderGrey),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (transparentPrefixIcon != null)
                    SvgAssets.getWidget(transparentPrefixIcon ?? ""),
                  if (transparentPrefixIcon != null) Gaps.hGap5,
                  CustomText(
                    transparentButtonTitle,
                    textStyle: context.textTheme.bodyMedium!.copyWith(
                        color: transparentButtonColor ?? context.colors.black),
                  ),
                ],
              ),
            ),
          ),
        if (isTwoButton && !isTransparentOnly) Gaps.hGap10,
        if (isTransparentOnly == false)
          Expanded(
            child: CustomButton(
              isEnable: isFilledButtonEnabled!,
              borderRadius: 8,
              height: heigh ?? 40,
              onPressed: () {
                filledButtonAction.call();
              },
              elevation: 2,
              child: CustomText(
                filledButtonTitle,
                textStyle: context.textTheme.bodyMedium!
                    .copyWith(color: context.colors.white),
              ),
            ),
          ),
      ],
    );
  }
}
