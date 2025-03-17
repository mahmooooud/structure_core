import 'package:ndf/core/common/resource.dart';
import 'package:flutter/material.dart';

customBottomSheet(
    {required Widget bottomSheetBody,
    required BuildContext context,
    double? margin,
    double? border,
    bool hasBarrierColor = true,
    bool isDismissible = true,
    bool enableDrag = true,
    bool isScrollControlled = true,
    ScrollPhysics? physics,
    Color backgroundColor = Colors.white,
    BoxConstraints? constraints}) {
  return showModalBottomSheet(
      useSafeArea: true,
      isDismissible: isDismissible,
      constraints:
          constraints ?? BoxConstraints(maxHeight: context.height * .9),
      useRootNavigator: true,
      builder: (context) {
        return Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            physics: physics,
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
      enableDrag: enableDrag);
}
