// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentDataModelImpl _$$AttachmentDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentDataModelImpl(
      id: (json['Id'] as num?)?.toInt(),
      uniqueId: json['UniqueId'] as String?,
      fileName: json['FileName'] as String?,
      fileDownloadName: json['FileDownloadName'] as String?,
      fileType: json['FileType'] as String?,
      fileSize: (json['FileSize'] as num?)?.toInt(),
      filePath: json['FilePath'] as String?,
      path: json['Path'] as String?,
    );

Map<String, dynamic> _$$AttachmentDataModelImplToJson(
        _$AttachmentDataModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'UniqueId': instance.uniqueId,
      'FileName': instance.fileName,
      'FileDownloadName': instance.fileDownloadName,
      'FileType': instance.fileType,
      'FileSize': instance.fileSize,
      'FilePath': instance.filePath,
      'Path': instance.path,
    };
