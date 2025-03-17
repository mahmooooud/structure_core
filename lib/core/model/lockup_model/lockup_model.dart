import 'package:freezed_annotation/freezed_annotation.dart';

part 'lockup_model.freezed.dart';
part 'lockup_model.g.dart';

@freezed
class LockupModel with _$LockupModel {
  const factory LockupModel({
    @JsonKey(name: 'Id') int? Id,
    @JsonKey(name: 'Name') String? Name,
  }) = _LockupModel;

  factory LockupModel.fromJson(Map<String, Object?> json) => _$LockupModelFromJson(json);
}

