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

Map<String, dynamic> _$$FilterParamsImplToJson(_$FilterParamsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  writeNotNull('skip', instance.skip);
  writeNotNull('limit', instance.limit);
  writeNotNull('order', instance.order);
  return val;
}

_$FilterWhereParamsImpl _$$FilterWhereParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterWhereParamsImpl(
      state: json['state'],
      type: json['type'],
    );

Map<String, dynamic> _$$FilterWhereParamsImplToJson(
    _$FilterWhereParamsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  writeNotNull('type', instance.type);
  return val;
}
