import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/lib/custom_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:structure_core/core/lib/custom_datetime_picker/src/date_picker_theme.dart';

import '../lib/custom_datetime_picker/src/date_picker_constants.dart';

class DateTimePicker extends StatelessWidget {
  final Widget child;

  /// if its null then it will open date picker directly else it will open Date time picker depends on functions return
  final bool Function()? openDateTimePicker;
  final DateTimePickerMode mode;
  final VoidCallback? onCancel;
  final VoidCallback? onClose;
  final Function(DateTime dateTime, List<int> selectedIndex)? onChange;
  final Function(DateTime dateTime, List<int> selectedIndex)? onConfirm;
  final DateTime? initialDateTime;
  final DateTime? minDateTime;
  final DateTime? maxDateTime;

  const DateTimePicker({
    Key? key,
    required this.child,
    required this.mode,
    this.openDateTimePicker,
    this.onCancel,
    this.onClose,
    this.onChange,
    this.onConfirm,
    this.initialDateTime,
    this.minDateTime,
    this.maxDateTime,
  }) : super(key: key);

  String get _format {
    if (mode == DateTimePickerMode.date) {
      return DATETIME_PICKER_DATE_FORMAT;
    } else if (mode == DateTimePickerMode.time) {
      return DATETIME_PICKER_TIME_FORMAT;
    } else {
      return DATETIME_PICKER_DATETIME_FORMAT;
    }
  }

  DateTimePickerLocale _locale(BuildContext context) {
    if (Localizations.localeOf(context).languageCode == "ar") {
      return DateTimePickerLocale.ar;
    } else {
      return DateTimePickerLocale.en_us;
    }
  }

  String getConfirmText(BuildContext context) {
    return "Confirm";
  }

  String getCancelText(BuildContext context) {
    return "Cancel";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (openDateTimePicker == null) {
          dateTimePickerWidget(
              context, _format, _locale(context), getConfirmText(context), getCancelText(context));
        } else {
          if (openDateTimePicker!() == false) {
            return;
          } else {
            dateTimePickerWidget(context, _format, _locale(context), getConfirmText(context),
                getCancelText(context));
          }
        }
      },
      child: child,
    );
  }

  void dateTimePickerWidget(BuildContext context, String dateFormat, DateTimePickerLocale locale,
      String confirmText, String cancelText) {
    DatePicker.showDatePicker(
      context,
      dateFormat: dateFormat,
      initialDateTime: initialDateTime ?? DateTime.now(),
      minDateTime: minDateTime ?? DateTime.now(),
      maxDateTime: maxDateTime ?? DateTime.now().add(const Duration(days: 356 * 4)),
      pickerMode: DateTimePickerMode.time,
      onMonthChangeStartWithFirstDate: true,
      onChange: onChange,
      onCancel: onCancel,
      onClose: onClose,
      locale: locale,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text(confirmText, style: Theme.of(context).textTheme.button!.copyWith(color: Colors.white)),
        cancel: Text(cancelText, style: Theme.of(context).textTheme.button!.copyWith(color: Colors.white)),
        backgroundColor: Colors.white,
        itemHeight: 60.h,
        titleHeight: 60.h,
        pickerHeight: MediaQuery.of(context).size.height * 0.5,
      ),
      onConfirm: onConfirm,
    );
  }
}
