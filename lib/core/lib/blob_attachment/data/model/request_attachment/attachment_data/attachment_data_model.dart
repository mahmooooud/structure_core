import 'package:freezed_annotation/freezed_annotation.dart';
part 'attachment_data_model.g.dart';
part 'attachment_data_model.freezed.dart';
@freezed
class AttachmentDataModel with _$AttachmentDataModel{
  const factory AttachmentDataModel({
    @JsonKey(name: "Id") int? id,
    @JsonKey(name: "UniqueId") String? uniqueId,
    @JsonKey(name: "FileName") String? fileName,

  }) = _AttachmentDataModel;
  factory AttachmentDataModel.fromJson(Map<String, Object?> json) => _$AttachmentDataModelFromJson(json);
}