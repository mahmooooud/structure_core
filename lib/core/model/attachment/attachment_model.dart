import 'package:freezed_annotation/freezed_annotation.dart';
part 'attachment_model.g.dart';
part 'attachment_model.freezed.dart';

@freezed

class AttachmentModel with _$AttachmentModel{

  const factory AttachmentModel({

    @JsonKey(name: "Id") int? id,
    @JsonKey(name: "UniqueId") String? uniqueId,
    @JsonKey(name: "FileName") String? fileName,
    @JsonKey(name: "FileDownloadName") String? fileDownloadName,
    @JsonKey(name: "FileType") String? fileType,
    @JsonKey(name: "FileSize") int? fileSize,
    @JsonKey(name: "FilePath") String? filePath,
    @JsonKey(name: "Path") String? path,

  }) = _AttachmentModel;

  factory AttachmentModel.fromJson(Map<String, Object?> json) => _$AttachmentModelFromJson(json);

}