import 'package:ndf/core/lib/blob_attachment/data/model/request_attachment/attachment_data/attachment_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'request_attachment_model.g.dart';
part 'request_attachment_model.freezed.dart';

@freezed
class RequestAttachmentModel with _$RequestAttachmentModel {
  const factory RequestAttachmentModel({
    @JsonKey(name: "Total") int? total,
    @JsonKey(name: "PageNumber") int? pageNumber,
    @JsonKey(name: "PageSize") int? pageSize,
    @JsonKey(name: "IsSuccess") bool? isSuccess,
    @JsonKey(name: "Data") List<AttachmentDataModel>? attachmentData,
  }) = _RequestAttachmentModel;
  factory RequestAttachmentModel.fromJson(Map<String, Object?> json) =>
      _$RequestAttachmentModelFromJson(json);
}
