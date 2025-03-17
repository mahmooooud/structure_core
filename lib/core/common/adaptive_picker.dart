import 'dart:io';

import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdaptivePicker {
  static datePicker(
      {required BuildContext context,
      required Function(DateTime? date) onConfirm,
      required String title,
      DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime = false}) async {
    if (Platform.isIOS) {
      _iosDatePicker(context, onConfirm, title,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime);
    } else {
      _androidDatePicker(context, onConfirm,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime);
    }
  }

  static _androidDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime = false}) {
    showRoundedDatePicker(
        initialDatePickerMode: DatePickerMode.day,
        context: context,
        initialDate: initial ?? DateTime.now(),
        firstDate: minDate ?? DateTime.now().add(const Duration(days: -1)),
        lastDate: maxDate ?? DateTime(2050),
        borderRadius: 16,
        height: 300,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: context.colors.primary, // header background color
            onPrimary: Colors.black, // header text color
          ),
          primaryColor: context.colors.white,
        )).then(onConfirm);
  }

  static _iosDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm, String title,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime = false}) {
    _bottomSheet(
      context: context,
      child: cupertinoDatePicker(context, onConfirm, title,
          initial: initial,
          minDate: minDate,
          maxDate: maxDate,
          isDateTime: isDateTime),
    );
  }

  static Widget cupertinoDatePicker(
      BuildContext context, Function(DateTime? date) onConfirm, String title,
      {DateTime? initial,
      DateTime? minDate,
      DateTime? maxDate,
      bool? isDateTime = false}) {
    DateTime _date = DateTime.now();
    return SizedBox(
      height: 260.h,
      width: context.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black45),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Navigator.pop");
                    Navigator.of(context).pop();
                    onConfirm(_date);
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.grey.withOpacity(.3)),
                  child: Text(
                    Translate.s.done,
                    style: context.textTheme.titleLarge
                        ?.copyWith(color: context.theme.primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: CupertinoTheme(
              data: const CupertinoThemeData(
                brightness: Brightness.light,
              ),
              child: CupertinoDatePicker(
                initialDateTime: initial ?? DateTime.now(),
                onDateTimeChanged: (date) {
                  _date = date;
                },
                maximumYear: DateTime.now().year,
                minimumYear: 1930,
                maximumDate: maxDate ?? DateTime.now(),
                minimumDate:
                    minDate ?? DateTime.now().add(const Duration(days: -1)),
                mode: CupertinoDatePickerMode.date,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static timePicker(
      {required BuildContext context,
      required String title,
      required Function(DateTime? date) onConfirm,
      DateTime? initialTime}) async {
    _androidTimePicker(context, onConfirm, initialTime: initialTime);
  }

  static _androidTimePicker(
      BuildContext context, Function(DateTime date) onConfirm,
      {DateTime? initialTime}) {
    var now = DateTime.now();
    showRoundedTimePicker(
      context: context,
      theme: ThemeData(
          primaryColor: context.colors.white,
          canvasColor: Colors.white,
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  textStyle: MaterialStatePropertyAll<TextStyle>(
                      TextStyle(color: context.colors.primary)))),
          buttonTheme:
              const ButtonThemeData(textTheme: ButtonTextTheme.primary)),
      initialTime: initialTime != null
          ? TimeOfDay(hour: initialTime.hour, minute: initialTime.minute)
          : TimeOfDay.now(),
    ).then((time) {
      if (time != null) {
        onConfirm(
            DateTime(now.year, now.month, now.day, time.hour, time.minute));
      }
    });
  }

  static Widget cupertinoTimePicker(
      BuildContext context, String title, Function(DateTime? date) onConfirm,
      {DateTime? initialTime}) {
    DateTime _date = DateTime.now();
    return SizedBox(
      height: 260,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black45),
                ),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      onConfirm(_date);
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Colors.white),
                    child: Text(
                      Translate.s.done,
                      style: context.textTheme.titleLarge
                          ?.copyWith(color: context.theme.primaryColor),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
              child: YearPicker(
            firstDate: DateTime(DateTime.now().year - 100, 1),
            lastDate: DateTime(DateTime.now().year + 100, 1),
            initialDate: initialTime ?? DateTime.now(),
            // save the selected date to _selectedDate DateTime variable.
            // It's used to set the previous selected date when
            // re-showing the dialog.

            onChanged: (DateTime dateTime) {
              print(dateTime.toString());
              onConfirm(dateTime);
              Navigator.pop(context);

              // Do something with the dateTime selected.
              // Remember that you need to use dateTime.year to get the year
            },
            selectedDate: initialTime ?? DateTime.now(),
          )),
        ],
      ),
    );
  }

  static _bottomSheet({required BuildContext context, required Widget child}) {
    return showModalBottomSheet(
      isScrollControlled: false,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(13),
          topRight: Radius.circular(13),
        ),
      ),
      context: context,
      builder: (context) => SizedBox(
        height: 320,
        child: child,
      ),
    );
  }

  static yearPicker(
      {required BuildContext context,
      required String title,
      required Function(DateTime? date) onConfirm,
      required DateTime initialTime}) async {
    if (Platform.isIOS) {
      _iosYearPicker(context, title, onConfirm, initialTime);
    } else {
      _androidYearPicker(context, title, onConfirm, initialTime);
    }
  }

  static _iosYearPicker(BuildContext context, String title,
      Function(DateTime? date) onConfirm, DateTime initialDate) {
    _bottomSheet(
      context: context,
      child: cupertinoYearPicker(context, title, onConfirm, initialDate),
    );
  }

  static Widget cupertinoYearPicker(BuildContext context, String title,
      Function(DateTime? date) onConfirm, DateTime initialDate) {
    DateTime _date = DateTime.now();
    return SizedBox(
      height: 260,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: context.textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500, color: Colors.black45),
                ),
                SizedBox(
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () {
                      onConfirm(_date);
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: Colors.white),
                    child: Text(
                      Translate.s.done,
                      style: context.textTheme.titleLarge
                          ?.copyWith(color: context.theme.primaryColor),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
              child: CupertinoDatePicker(
            initialDateTime: initialDate,
            onDateTimeChanged: (date) {
              _date = date;
            },
            mode: CupertinoDatePickerMode.time,
          )),
        ],
      ),
    );
  }

  static _androidYearPicker(BuildContext context, String title,
      Function(DateTime? date) onConfirm, DateTime selectedDate) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SizedBox(
            // Need to use container to add size constraint.
            width: 300,
            height: 300,
            child: YearPicker(
              firstDate: DateTime(DateTime.now().year - 100, 1),
              lastDate: DateTime(DateTime.now().year + 100, 1),
              initialDate: DateTime.now(),
              // save the selected date to _selectedDate DateTime variable.
              // It's used to set the previous selected date when
              // re-showing the dialog.

              onChanged: (DateTime dateTime) {
                print(dateTime.toString());
                onConfirm(dateTime);
                Navigator.pop(context);

                // Do something with the dateTime selected.
                // Remember that you need to use dateTime.year to get the year
              },
              selectedDate: selectedDate,
            ),
          ),
        );
      },
    );
  }
}
