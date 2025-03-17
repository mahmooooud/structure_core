// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguagesModelImpl _$$LanguagesModelImplFromJson(Map<String, dynamic> json) =>
    _$LanguagesModelImpl(
      entityName: json['dataEntity'] as String,
      entityValue:
          LanguageValueModel.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LanguagesModelImplToJson(
        _$LanguagesModelImpl instance) =>
    <String, dynamic>{
      'dataEntity': instance.entityName,
      'value': instance.entityValue,
    };

_$LanguageValuesModelImpl _$$LanguageValuesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageValuesModelImpl(
      localizedName: localizedNameModelFromJson(json['name']),
      direction: $enumDecode(_$LanguageDirEnumMap, json['dir']),
      languageCode: json['code'] as String,
      isDefault: json['isDefault'] as bool? ?? false,
    );

Map<String, dynamic> _$$LanguageValuesModelImplToJson(
        _$LanguageValuesModelImpl instance) =>
    <String, dynamic>{
      'name': localizedNameModelToJson(instance.localizedName),
      'dir': _$LanguageDirEnumMap[instance.direction]!,
      'code': instance.languageCode,
      'isDefault': instance.isDefault,
    };

const _$LanguageDirEnumMap = {
  LanguageDir.ltr: 'ltr',
  LanguageDir.rtl: 'rtl',
};
