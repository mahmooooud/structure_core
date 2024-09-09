import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/ui/options/button/option_button.dart';
import 'package:structure_core/core/ui/options/controller/option_controller.dart';
import 'package:structure_core/core/ui/app_button.dart';

class AppSheetButton<T> extends StatelessWidget {
  final String hintText;
  final OptionController<T> controller;
  final String? iconPath;
  final Function(BuildContext context, T item) valueBuilder;
  final Widget Function(BuildContext context) content;
  final String? customSaveText;
  final VoidCallback onSaveTextPressed;
  final String bottomSheetTitle;

  const AppSheetButton({
    Key? key,
    required this.hintText,
    required this.bottomSheetTitle,
    required this.controller,
    this.iconPath,
    required this.valueBuilder,
    required this.content,
    this.customSaveText,
    required this.onSaveTextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OptionsButton<T>(
      hintText: hintText,
      controller: controller,
      valueBuilder: valueBuilder,
      iconPath: iconPath,
      onPressed: () {
        /// to reset temp value when open bottom sheet
        controller.tempValue = controller.selectedValue;
        showModalBottomSheet(
            context: context,
            elevation: 0.0,
            isDismissible: true,
            enableDrag: true,
            barrierColor: const Color.fromRGBO(0, 0, 0, 0.35),
            shape: const OutlineInputBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                borderSide: BorderSide.none),
            builder: (context) => SizedBox(
                  height: (MediaQuery.of(context).size.height - 53) * .7,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gaps.vGap8,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                                bottomSheetTitle,
                              style: Theme.of(context).textTheme.headline6!.copyWith(
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          ),
                          Gaps.vGap8,
                          Container(
                            height: (MediaQuery.of(context).size.height - 53) * .4,
                            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                              child: AnimatedBuilder(
                                  animation: controller,
                                  builder: (context, __) {
                                  return content(context);
                                }
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppTextButton(
                                  width: 80.w,
                                  isTransparentBackground: true,
                                  text: "Cancel",
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                Gaps.hGap8,
                                AppTextButton(
                                  width: 80.w,
                                  text: customSaveText ?? "Save",
                                  onPressed: onSaveTextPressed,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ));
      },
    );
  }
}
