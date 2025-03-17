import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_model.g.dart';
part 'filter_model.freezed.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    @JsonKey(name: "Id", includeIfNull: false) int? id,
    @JsonKey(name: "Title", includeIfNull: false) String? title,
    @JsonKey(name: "Status", includeIfNull: false) List<String>? status,
    @JsonKey(name: "UserType", includeIfNull: false) String? userType,
    @JsonKey(name: "IsActive", includeIfNull: false) bool? isActive,
  }) = _FilterModel;
  factory FilterModel.fromJson(Map<String, Object?> json) =>
      _$FilterModelFromJson(json);
}
