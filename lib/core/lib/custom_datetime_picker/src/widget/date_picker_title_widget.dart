import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../date_picker_constants.dart';
import '../date_picker_theme.dart';
import '../i18n/date_picker_i18n.dart';

/// DatePicker's title widgets.
///
/// @author dylan wu
/// @since 2019-05-16
class DatePickerTitleWidget extends StatelessWidget {
  DatePickerTitleWidget({
    Key? key,
    required this.pickerTheme,
    required this.locale,
    required this.onCancel,
    required this.onConfirm,
  }) : super(key: key);

  final DateTimePickerTheme pickerTheme;
  final DateTimePickerLocale locale;
  final DateVoidCallback onCancel, onConfirm;

  @override
  Widget build(BuildContext context) {
    if (pickerTheme.title != null) {
      return pickerTheme.title!;
    }
    return Container(
      height: pickerTheme.titleHeight.h,
      decoration: BoxDecoration(color: pickerTheme.backgroundColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: _renderCancelWidget(context)),
          Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: _renderConfirmWidget(context)),
        ],
      ),
    );
  }

  /// render cancel button widgets
  Widget _renderCancelWidget(BuildContext context) {
    if (isCustomTitleWidget()) {
      // has custom title button widgets
      if (pickerTheme.cancel == null) {
        return Offstage();
      }
    }

    Widget? cancelWidget = pickerTheme.cancel;
    if (cancelWidget == null) {
      TextStyle textStyle = pickerTheme.cancelTextStyle ??
          TextStyle(
            color: Theme.of(context).unselectedWidgetColor,
            fontSize: 17.0.sp,
          );
      cancelWidget = Text(
        DatePickerI18n.getLocaleCancel(locale),
        style: textStyle,
      );
    }

    return Container(
      height: pickerTheme.titleHeight.h,
      child: TextButton(
        child: cancelWidget,
        onPressed: () => this.onCancel(),
      ),
    );
  }

  /// render confirm button widgets
  Widget _renderConfirmWidget(BuildContext context) {
    if (isCustomTitleWidget()) {
      // has custom title button widgets
      if (pickerTheme.confirm == null) {
        return const Offstage();
      }
    }

    Widget? confirmWidget = pickerTheme.confirm;
    if (confirmWidget == null) {
      TextStyle textStyle = pickerTheme.confirmTextStyle ??
          TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 17.0.sp,
          );
      confirmWidget = Text(
        DatePickerI18n.getLocaleDone(locale),
        style: textStyle,
      );
    }

    return Container(
      height: pickerTheme.titleHeight.h,
      child: TextButton(
        child: confirmWidget,
        style: TextButton.styleFrom(
          primary: Theme.of(context).primaryColor,
        ),
        onPressed: () => this.onConfirm(),
      ),
    );
  }

  bool isCustomTitleWidget() {
    return pickerTheme.cancel != null || pickerTheme.confirm != null || pickerTheme.title != null;
  }
}
