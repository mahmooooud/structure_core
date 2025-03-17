import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_customer_model.freezed.dart';
part 'add_customer_model.g.dart';

@freezed
class AddCustomerModel with _$AddCustomerModel {
  const factory AddCustomerModel({
    @JsonKey(name: 'Password') String? password,
    @JsonKey(name: 'FullName') String? fullName,
    @JsonKey(name: 'NationalId') String? nationalId,
    @JsonKey(name: 'PhoneNumber') String? phone,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'IsAcknowledged') bool? isAcknowledged,
  }) = _AddCustomerModel;

  factory AddCustomerModel.fromJson(Map<String, Object?> json) =>
      _$AddCustomerModelFromJson(json);
}
