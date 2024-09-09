import 'package:flutter/material.dart';
import 'package:structure_core/core/ui/style/constrains/app_contrains.dart';

class OptionButtonDecoration extends StatelessWidget {
  final Widget child;
  final double? startPadding;

  const OptionButtonDecoration({Key? key, required this.child, this.startPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: AppConstrains.textFieldConstrains,
      padding: EdgeInsetsDirectional.only(top: 4, bottom: 4, start: startPadding ?? 0, end: 12),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey, width: 1)),
      child: child,
    );
  }
}
