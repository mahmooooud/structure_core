import 'package:ndf/core/common/appConfig.dart';

/// how to use ?
/// @JsonKey(name: "name", fromJson: localizedNameModelFromJson, toJson: localizedNameModelToJson) required final LocalizedNameModel localizedName,
class LocalizedNameModel {
  final dynamic localizedNameString;

  const LocalizedNameModel([this.localizedNameString]);

  /// [LocalizedStringType] it comes from field model and it will be Map of String
  /// [key] is the key of the language
  /// [values] is the value of the language
  /// this function will return the correct localized based on device language
  String get getLocalizedString {
    if (AppConfig().localizedNameHelper == null) {
      return "";
    }
    if (localizedNameString == null) return "";
    if (localizedNameString is String) return localizedNameString;
    return AppConfig()
        .localizedNameHelper!
        .getCurrentLocalizedName(localizedNameString);
  }

  @override
  String toString() {
    return 'LocalizedNameModel{localizedNameString: $localizedNameString}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalizedNameModel &&
          runtimeType == other.runtimeType &&
          localizedNameString == other.localizedNameString;

  @override
  int get hashCode => localizedNameString.hashCode;
}

LocalizedNameModel localizedNameModelFromJson(dynamic json) {
  return LocalizedNameModel(json);
}

Map<String, dynamic>? localizedNameModelToJson(LocalizedNameModel? map) {
  if (map == null) return null;
  return map.localizedNameString;
}
