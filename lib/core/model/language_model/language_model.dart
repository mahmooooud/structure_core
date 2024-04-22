import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structure_core/core/model/language_model/localized_name_model/localized_name_model.dart';

part 'language_model.freezed.dart';

part 'language_model.g.dart';

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    @JsonKey(name: "dataEntity") required final String entityName,
    @JsonKey(name: "value") required final LanguageValueModel entityValue,
  }) = _LanguagesModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}

@freezed
class LanguageValueModel with _$LanguageValueModel {
  const LanguageValueModel._();

  const factory LanguageValueModel({
    @JsonKey(name: "name", fromJson: localizedNameModelFromJson, toJson: localizedNameModelToJson)
        required final LocalizedNameModel localizedName,
    @JsonKey(name: "dir")
        required final LanguageDir direction,
    @JsonKey(name: "code")
        required final String languageCode,
    @JsonKey(
      name: "isDefault",
      defaultValue: false,
    )
        required final bool isDefault,
  }) = _LanguageValuesModel;

  factory LanguageValueModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageValueModelFromJson(json);
}

enum LanguageDir {
  @JsonValue("ltr")
  ltr,
  @JsonValue("rtl")
  rtl,
}
