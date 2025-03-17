import 'package:ndf/core/model/lists_parameter/filter_model/filter_model.dart';
import 'package:ndf/core/model/lists_parameter/sort_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'lists_parameter_model.g.dart';
part 'lists_parameter_model.freezed.dart';

@freezed
class ListsParameterModel with _$ListsParameterModel {
  const factory ListsParameterModel({
    @JsonKey(name: "FilterModel", includeIfNull: false)
    FilterModel? filterModel,
    @JsonKey(name: "OrderModel", includeIfNull: false) SortModel? sortModel,
    @JsonKey(name: "PageNumber", toJson: pageNumberToJson) int? pageNumber,
    @JsonKey(name: "PageSize", toJson: pageSizeToJson) int? pageSize,
  }) = _RequestsParameterModel;
  factory ListsParameterModel.fromJson(Map<String, Object?> json) =>
      _$ListsParameterModelFromJson(json);
}

int? pageNumberToJson(int? key) {
  return key ?? 1;
}

int? pageSizeToJson(int? key) {
  return key ?? 30;
}
