// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentDataModelImpl _$$AttachmentDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentDataModelImpl(
      id: json['Id'] as int?,
      uniqueId: json['UniqueId'] as String?,
      fileName: json['FileName'] as String?,
    );

Map<String, dynamic> _$$AttachmentDataModelImplToJson(
        _$AttachmentDataModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'UniqueId': instance.uniqueId,
      'FileName': instance.fileName,
    };
