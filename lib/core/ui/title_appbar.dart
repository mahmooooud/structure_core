import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
    required this.title,
    this.withBack = true,
  });
  final String title;
  final bool withBack;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      margin: EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (withBack)
            Icon(
              Icons.arrow_back_ios_new,
              color: context.colors.white,
              size: 18,
            ).press(
              onTap: () {
                GetIt.I<AppRouter>().back();
              },
            ),
          Gaps.hGap15,
          CustomText(
            title,
            textStyle: context.textTheme.bodyLarge!.copyWith(
                height: 1,
                color: context.colors.white,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
