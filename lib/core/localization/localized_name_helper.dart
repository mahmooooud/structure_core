import 'package:collection/collection.dart';

class LocalizedNameHelper {
  /// current language which is set in the app
  final String currentLanguage;

  /// default language which is set from system
  final String? defaultLanguage;

  LocalizedNameHelper({required this.currentLanguage, required this.defaultLanguage});

  /// will use when change language from setting to update current language
  LocalizedNameHelper copyWith({String? currentLanguage, String? defaultLanguage}) {
    return LocalizedNameHelper(
        currentLanguage: currentLanguage ?? this.currentLanguage,
        defaultLanguage: defaultLanguage ?? this.defaultLanguage);
  }

  /// if the current language is not equal with what exist then it will return the default language
  /// if the default language is not set then it will return the first language
  /// else return empty string
  String getCurrentLocalizedName(Map<String, dynamic> localizedString) {
    if (localizedString.isEmpty) {
      return "";
    } else if (localizedString.containsKey(currentLanguage)) {
      if (localizedString[currentLanguage] != null && localizedString[currentLanguage].toString().isNotEmpty) {
        return localizedString[currentLanguage]!;
      } else if (localizedString[defaultLanguage] != null && localizedString[defaultLanguage].toString().isNotEmpty) {
        return localizedString[defaultLanguage]!;
      } else {
        return localizedString.values.firstWhereOrNull((element) => (element != null && element.toString().isNotEmpty))??"";
      }
    } else if (localizedString[defaultLanguage] != null) {
      return localizedString[defaultLanguage]!;
    } else if (localizedString.values.first is String) {
      return localizedString.values.first;
    } else if (localizedString.values.first is List<Map>) {
      return (localizedString.values.first as Map).values.first;
    } else {
      return "";
    }
  }
}
