import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:structure_core/core/common/appConfig.dart';

const String _dateFormat = 'yyyy-MM-dd';
const String _dateHistoryFormat = 'EEE dd MMM yyyy';
const String _monthFormat = 'yyyy-MM';
const String _dateTimeFormat = 'yyyy-MM-dd hh:mm:ss a';
const String _notificationFormat = 'MM/dd/yyyy h:mm:ss a';
const String _timeFormat = 'hh:mm a';
const String _yearNameFomat = 'yyyy';
const String _monthNameFomat = 'MMM';
const String _dayNameFomat = 'EEE';
const String _requestDateFormat = 'dd MMM,yyyy';
const String _requestDateFormatWithoutYear = 'dd MMM';
const String _requestDateFormatWithoutDay = 'MMM yyyy';

/// TODO refactor: we must deal with DateTime object then convert it
extension DateExtension on String {
  DateTime? get parsDateTime {
    String dateTimeString = this;
    if (dateTimeString.isEmpty) return null;
    if (dateTimeString.contains("/"))
      dateTimeString = dateTimeString.replaceAll("/", "-");
    if (dateTimeString.toLowerCase().contains("am") ||
        dateTimeString.toLowerCase().contains("pm")) {
      return DateFormat(_dateTimeFormat, 'en_US').parse(dateTimeString);
    }
    if (dateTimeString.toLowerCase().contains("ص") ||
        dateTimeString.toLowerCase().contains("م")) {
      return DateFormat(_dateTimeFormat, 'en').parse(dateTimeString);
    }
    if (length == 10) dateTimeString = "$dateTimeString 00:00:00";
    if (DateTime.tryParse(dateTimeString) != null)
      return DateTime.parse(dateTimeString);
    return null;
  }
  DateTime? get parsNotificationDateTime {
    String dateTimeString = this;
    if (dateTimeString.isEmpty) return null;
    // if (dateTimeString.contains("/"))
    //   dateTimeString = dateTimeString.replaceAll("/", "-");
    if (dateTimeString.toLowerCase().contains("am") ||
        dateTimeString.toLowerCase().contains("pm")) {
      return DateFormat(_notificationFormat, 'en_US').parse(dateTimeString);
    }
    if (dateTimeString.toLowerCase().contains("ص") ||
        dateTimeString.toLowerCase().contains("م")) {
      return DateFormat(_notificationFormat, 'en').parse(dateTimeString);
    }
    if (length == 10) dateTimeString = "$dateTimeString 00:00:00";
    if (DateTime.tryParse(dateTimeString) != null)
      return DateTime.parse(dateTimeString);
    return null;
  }


  DateTime? get parsDate {
    String dateString = this;
    if (dateString.isEmpty) return null;
    if (dateString.contains("/")) dateString = dateString.replaceAll("/", "-");
    return DateFormat(_dateFormat, 'en_US').parse(dateString);
  }
}

extension IntExtension on int {
  String getDayString() {
    switch (this) {
      case 0:
        return 'Mon';
      case 1:
        return 'Tue';
      case 2:
        return 'Wed';
      case 3:
        return 'Thu';
      case 4:
        return 'Fri';
      case 5:
        return 'Sat';
      case 6:
        return 'Sun';
      default:
        return '';
    }
  }
}

extension DateTimeExtension on DateTime {
  String get convertDateTimeToUTC {
    if (isUtc) return toIso8601String();
    DateTime dateTimeUTC = toUtc();
    return dateTimeUTC.toIso8601String();
  }

  DateTime? get convertToLocal {
    if (!isUtc) return this;
    DateTime dateTimeLocal = toLocal();
    return dateTimeLocal;
  }

  String get formatMonth {
    if (convertToLocal == null) return "";
    return DateFormat(_monthFormat, AppConfig().appLocal!.languageCode)
        .format(convertToLocal!);
  }

  String get monthName {
    if (convertToLocal == null) return "";
    return DateFormat(_monthNameFomat, AppConfig().appLocal!.languageCode)
        .format(convertToLocal!);
  }

  String get dayName {
    if (convertToLocal == null) return "";
    return DateFormat(_dayNameFomat, AppConfig().appLocal!.languageCode)
        .format(convertToLocal!);
  }

  String get yearName {
    if (convertToLocal == null) return "";
    return DateFormat(_yearNameFomat, AppConfig().appLocal!.languageCode)
        .format(convertToLocal!);
  }

  /// Convert date to string with format like 25 - 5 - 2022 used in UI
  String get formatDate {
    return DateFormat(_dateFormat, 'en_US').format(this);
  }
  String get requestDateFormat {
    return DateFormat(_requestDateFormat, AppConfig().appLocal!.languageCode).format(this);
  }
  String get requestDateWithoutYearFormat {
    return DateFormat(_requestDateFormatWithoutYear, AppConfig().appLocal!.languageCode).format(this);
  }
  String get requestDateWithoutDayFormat {
    return DateFormat(_requestDateFormatWithoutDay, AppConfig().appLocal!.languageCode).format(this);
  }

  String get formatEnDate {
    return DateFormat(_dateFormat, 'en_US').format(this);
  }




  String get ddMMMyyyy {
    return DateFormat("dd MMM yyyy", AppConfig().currentLanguageCode)
        .format(this);
  }

  String get DDdd {
    return DateFormat("EEE - dd", AppConfig().currentLanguageCode).format(this);
  }

  String get hhmma {
    return DateFormat("hh:mm a", AppConfig().currentLanguageCode).format(this);
  }
  String get hhmm {
    return DateFormat("hh:mm", AppConfig().currentLanguageCode).format(this);
  }

  String get HHmmLang {
    return DateFormat("HH:mm", AppConfig().currentLanguageCode).format(this);
  }
  String get HHmmaLang {
    return DateFormat("HH:mm a", AppConfig().currentLanguageCode).format(this);
  }

  String get HHmm {
    return DateFormat("HH:mm", "en_US").format(this);
  }

  /// Convert date to string with format like Tus 5 Jun 2022 used in UI
  String get formatHistoryDate {
    return Jiffy(this).format(_dateHistoryFormat);
  }

  /// Convert date to string with format like hh:mm a used in UI
  String get formatTime {
    return Jiffy(this).format(_timeFormat);
  }

  /// Convert date to string with format like 25 - 5 - 2022  hh:mm a used in UI
  String get formatDateAndTime {
    return Jiffy(this).format(_dateTimeFormat);
  }

  String get formatRelative {
    return Jiffy(this).fromNow();
  }

  String formatEventRelative() {
    return Jiffy(this).fromNow();
    // .fromNow()
    // .replaceAll('in ', ' ')
    // .replaceAll('في', '')
    // .replaceAll('بعد', '');
  }
}
