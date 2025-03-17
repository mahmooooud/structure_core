import 'package:intl/intl.dart';
import 'package:ndf/core/common/extension/date_extension.dart';

import '../appConfig.dart';

List<String> getMonthsInYear() {
  final dates = <String>[];
  final now = DateTime.now();
  final allMonths = DateTime(now.year, 13);
  DateTime date = DateTime(now.year, 1);

  while (date.isBefore(allMonths)) {
    dates.add(DateFormat.MMMM((AppConfig().appLocal == null)
            ? 'en'
            : AppConfig().appLocal!.languageCode)
        .format(date));
    date = DateTime(date.year, date.month + 1);
  }
  return dates;
}

List<String> getComponentYears() {
  final dates = List<DateTime>.generate(110, (i) {
    return DateTime.utc(
      (1920 + i),
    ).add(const Duration(days: 370));
  }).toList().map((e) => e.year.toString()).toList();
  return dates;
}

String dateTimeRangeFormat(dynamic val) {
  String value = '';
  if (val == null) {
    value = '';
  } else if (val is String) {
    value = val.parsDateTime!.formatDateAndTime;
  } else if (val is List) {
    value =
        (('${val[0].toString().parsDateTime!.formatDateAndTime} - ${val[1].toString().parsDateTime!.formatDateAndTime}'));
  }
  return value;
}

String dateRangeFormat(dynamic val) {
  String value = '';
  if (val == null) {
    value = '';
  } else if (val is String) {
    value = val.parsDateTime!.formatDate;
  } else if (val is List) {
    if (val.length > 1) {
      value =
          (('${val[0].toString().parsDateTime!.formatDate} - ${val[1].toString().parsDateTime!.formatDate}'));
    }
  }
  return value;
}

String monthYearRangeFormat(dynamic val) {
  String value = '';
  if (val == null) {
    value = '';
  } else if (val is String) {
    value = val.toString().parsDateTime!.formatMonth;
  } else if (val is List) {
    if (val.length > 1) {
      value =
          (('${val[0].toString().parsDateTime!.formatMonth} - ${val[1].toString().parsDateTime!.formatMonth}'));
    }
  }
  return value;
}
