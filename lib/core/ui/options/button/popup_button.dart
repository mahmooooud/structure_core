import 'package:flutter/material.dart';
import 'package:structure_core/core/common/dimens.dart';

class AppPopupMenuButton<T> extends StatelessWidget {
  final PopupMenuItemBuilder<T> itemBuilder;
  final Widget icon;

  const AppPopupMenuButton({Key? key, required this.itemBuilder, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: icon,
      padding: EdgeInsets.zero,
      splashRadius: Dimens.sheetBorderRadius.topLeft.x,
      elevation: 4.0,
      shape:
      OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      itemBuilder: itemBuilder,
    );
  }
}
