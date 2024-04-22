import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_model.g.dart';
part 'base_model.freezed.dart';

@Freezed(toJson: true,fromJson: true)
class BaseModel with _$BaseModel{
  const BaseModel._();
  const factory BaseModel({
    @JsonKey(name: "Total") int? total,
    @JsonKey(name: "PageNumber") int? pageNumber,
    @JsonKey(name: "PageSize") int? pageSize,
    @JsonKey(name: "IsSuccess") bool? isSuccess,
  }) = _BaseModel;
  factory BaseModel.fromJson(Map<String, Object?> json) => _$BaseModelFromJson(json);

}


