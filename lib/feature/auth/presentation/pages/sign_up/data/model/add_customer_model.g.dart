// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCustomerModelImpl _$$AddCustomerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCustomerModelImpl(
      password: json['Password'] as String?,
      fullName: json['FullName'] as String?,
      nationalId: json['NationalId'] as String?,
      phone: json['PhoneNumber'] as String?,
      email: json['Email'] as String?,
      isAcknowledged: json['IsAcknowledged'] as bool?,
    );

Map<String, dynamic> _$$AddCustomerModelImplToJson(
        _$AddCustomerModelImpl instance) =>
    <String, dynamic>{
      'Password': instance.password,
      'FullName': instance.fullName,
      'NationalId': instance.nationalId,
      'PhoneNumber': instance.phone,
      'Email': instance.email,
      'IsAcknowledged': instance.isAcknowledged,
    };
