// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      id: (json['Id'] as num?)?.toInt(),
      title: json['Title'] as String?,
      status:
          (json['Status'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userType: json['UserType'] as String?,
      isActive: json['IsActive'] as bool?,
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'Id': value,
      if (instance.title case final value?) 'Title': value,
      if (instance.status case final value?) 'Status': value,
      if (instance.userType case final value?) 'UserType': value,
      if (instance.isActive case final value?) 'IsActive': value,
    };
