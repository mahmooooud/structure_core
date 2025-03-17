// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAttachmentModelImpl _$$UploadAttachmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAttachmentModelImpl(
      id: (json['Id'] as num?)?.toInt(),
      uniqueId: json['UniqueId'] as String?,
      fileName: json['FileName'] as String?,
      fileDownloadName: json['FileDownloadName'] as String?,
      fileType: json['FileType'] as String?,
      fileSize: (json['FileSize'] as num?)?.toInt(),
      contentType: json['ContentType'] as String?,
    );

Map<String, dynamic> _$$UploadAttachmentModelImplToJson(
        _$UploadAttachmentModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'UniqueId': instance.uniqueId,
      'FileName': instance.fileName,
      'FileDownloadName': instance.fileDownloadName,
      'FileType': instance.fileType,
      'FileSize': instance.fileSize,
      'ContentType': instance.contentType,
    };
