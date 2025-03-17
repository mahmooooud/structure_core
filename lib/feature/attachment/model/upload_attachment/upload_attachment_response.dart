import 'package:ndf/feature/attachment/model/upload_attachment/upload_attachment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_attachment_response.g.dart';
part 'upload_attachment_response.freezed.dart';

@freezed
class UploadAttachmentResponse with _$UploadAttachmentResponse {
  const factory UploadAttachmentResponse({
    @JsonKey(name: "Data") List<UploadAttachmentModel>? data,
  }) = _UploadAttachmentResponse;
  factory UploadAttachmentResponse.fromJson(Map<String, Object?> json) =>
      _$UploadAttachmentResponseFromJson(json);
}
