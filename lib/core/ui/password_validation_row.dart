import 'package:flutter/material.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/custom_text.dart';

class PasswordValidationRow extends StatelessWidget {
  final bool? isValid;
  final String validationRole;

  const PasswordValidationRow({
    super.key,
    this.isValid,
    required this.validationRole,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.colors.transparent,
            border: Border.all(
                width: 2,
                color: (isValid == false)
                    ? context.colors.titleBlack
                    : context.colors.green),
          ),
          padding: const EdgeInsets.all(1),
          child: Icon(
            Icons.check,
            color: (isValid == false)
                ? context.colors.titleGrey
                : context.colors.green,
            size: 15,
          ),
        ),
        Gaps.hGap8,
        CustomText(
          validationRole,
          textStyle: context.textTheme.displaySmall!.copyWith(
              fontWeight: FontWeight.w500, color: context.colors.titleBlack),
        )
      ],
    );
  }
}
