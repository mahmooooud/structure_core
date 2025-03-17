import 'package:freezed_annotation/freezed_annotation.dart';

part 'sort_model.freezed.dart';
part 'sort_model.g.dart';

@freezed
class SortModel with _$SortModel {
  const factory SortModel({
    @JsonKey(name: 'FieldName') String? fieldName,
    @JsonKey(name: 'SortType') String? sortType,
  }) = _SortModel;

  factory SortModel.fromJson(Map<String, Object?> json) =>
      _$SortModelFromJson(json);
}
