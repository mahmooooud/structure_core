import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_params.freezed.dart';
part 'filter_params.g.dart';

@freezed
class FilterParams with _$FilterParams {
  @JsonSerializable(explicitToJson: true)
  const factory FilterParams({
    @JsonKey(name: "where", includeIfNull: false, nullable: true) final FilterWhereParams? where,
    @JsonKey(name: "skip", includeIfNull: false, nullable: true) final int? skip,
    @JsonKey(name: "limit", includeIfNull: false, nullable: true) final int? limit,
    @JsonKey(name: "order", includeIfNull: false, nullable: true) final List<String?>? order,
  }) = _FilterParams;

  factory FilterParams.fromJson(Map<String, Object?> json) => _$FilterParamsFromJson(json);
}

@freezed
class FilterWhereParams with _$FilterWhereParams {
  @JsonSerializable(explicitToJson: true)
  const factory FilterWhereParams({
    @JsonKey(name: "state", nullable: true, includeIfNull: false) final dynamic state,
    @JsonKey(name: "type", nullable: true, includeIfNull: false) final dynamic type,
  }) = _FilterWhereParams;

  factory FilterWhereParams.fromJson(Map<String, Object?> json) =>
      _$FilterWhereParamsFromJson(json);
}
