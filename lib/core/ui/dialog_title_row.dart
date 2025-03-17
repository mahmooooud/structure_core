import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class DialogRowTitle extends StatelessWidget {
  const DialogRowTitle({
    super.key,
    required this.title,
    this.hasClose = true,
  });
  final String title;
  final bool hasClose;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title,
          textStyle: context.textTheme.titleSmall!.copyWith(
            height: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (hasClose)
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.close,
              color: context.colors.iconGrey,
              size: 25,
            ),
          )
      ],
    );
  }
}
