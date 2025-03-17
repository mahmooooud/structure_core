// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_attachment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadAttachmentResponseImpl _$$UploadAttachmentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadAttachmentResponseImpl(
      data: (json['Data'] as List<dynamic>?)
          ?.map(
              (e) => UploadAttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UploadAttachmentResponseImplToJson(
        _$UploadAttachmentResponseImpl instance) =>
    <String, dynamic>{
      'Data': instance.data,
    };
