// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_parameter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestsParameterModelImpl _$$RequestsParameterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestsParameterModelImpl(
      filterModel: json['FilterModel'] == null
          ? null
          : FilterModel.fromJson(json['FilterModel'] as Map<String, dynamic>),
      sortModel: json['OrderModel'] == null
          ? null
          : SortModel.fromJson(json['OrderModel'] as Map<String, dynamic>),
      pageNumber: (json['PageNumber'] as num?)?.toInt(),
      pageSize: (json['PageSize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RequestsParameterModelImplToJson(
        _$RequestsParameterModelImpl instance) =>
    <String, dynamic>{
      if (instance.filterModel case final value?) 'FilterModel': value,
      if (instance.sortModel case final value?) 'OrderModel': value,
      'PageNumber': pageNumberToJson(instance.pageNumber),
      'PageSize': pageSizeToJson(instance.pageSize),
    };
