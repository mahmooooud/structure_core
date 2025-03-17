// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterParamsImpl _$$FilterParamsImplFromJson(Map<String, dynamic> json) =>
    _$FilterParamsImpl(
      where: json['where'] == null
          ? null
          : FilterWhereParams.fromJson(json['where'] as Map<String, dynamic>),
      skip: (json['skip'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      order:
          (json['order'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$FilterParamsImplToJson(_$FilterParamsImpl instance) =>
    <String, dynamic>{
      if (instance.where?.toJson() case final value?) 'where': value,
      if (instance.skip case final value?) 'skip': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.order case final value?) 'order': value,
    };

_$FilterWhereParamsImpl _$$FilterWhereParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterWhereParamsImpl(
      state: json['state'],
      type: json['type'],
    );

Map<String, dynamic> _$$FilterWhereParamsImplToJson(
        _$FilterWhereParamsImpl instance) =>
    <String, dynamic>{
      if (instance.state case final value?) 'state': value,
      if (instance.type case final value?) 'type': value,
    };
