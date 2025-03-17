// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAttachmentModelImpl _$$RequestAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAttachmentModelImpl(
      total: (json['Total'] as num?)?.toInt(),
      pageNumber: (json['PageNumber'] as num?)?.toInt(),
      pageSize: (json['PageSize'] as num?)?.toInt(),
      isSuccess: json['IsSuccess'] as bool?,
      attachmentData: (json['Data'] as List<dynamic>?)
          ?.map((e) => AttachmentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestAttachmentModelImplToJson(
        _$RequestAttachmentModelImpl instance) =>
    <String, dynamic>{
      'Total': instance.total,
      'PageNumber': instance.pageNumber,
      'PageSize': instance.pageSize,
      'IsSuccess': instance.isSuccess,
      'Data': instance.attachmentData,
    };
