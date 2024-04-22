import 'package:flutter/material.dart';
import 'package:structure_core/core/common/extension/context.dart';

customBottomSheet({
  required Widget bottomSheetBody,
  required BuildContext context,
  double? margin,
  double? border,
  bool hasBarrierColor = true,
  bool isScrollControlled = true,
  Color backgroundColor = Colors.white,
}) {
  return showModalBottomSheet(
    useRootNavigator: true,
    builder: (context) {
      return SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(border ?? 20),
                  topLeft: Radius.circular(border ?? 20),
                ),
                color: backgroundColor,
              ),
              child: bottomSheetBody,
            ),
          ],
        ),
      );
    },
    backgroundColor: Colors.transparent,
    barrierColor: hasBarrierColor
        ? context.colors.black.withOpacity(.7)
        : context.colors.black.withOpacity(.3),
    elevation: 0.0,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    isScrollControlled: isScrollControlled,
    context: context,
  );
}
