import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_attachment_model.g.dart';
part 'upload_attachment_model.freezed.dart';

@freezed
class UploadAttachmentModel with _$UploadAttachmentModel {
  const factory UploadAttachmentModel({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'UniqueId') String? uniqueId,
    @JsonKey(name: 'FileName') String? fileName,
    @JsonKey(name: 'FileDownloadName') String? fileDownloadName,
    @JsonKey(name: 'FileType') String? fileType,
    @JsonKey(name: 'FileSize') int? fileSize,
    @JsonKey(name: 'ContentType') String? contentType,
  }) = _UploadAttachmentModel;
  factory UploadAttachmentModel.fromJson(Map<String, Object?> json) =>
      _$UploadAttachmentModelFromJson(json);
}
