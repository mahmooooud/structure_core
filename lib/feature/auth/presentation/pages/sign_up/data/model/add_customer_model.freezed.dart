// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCustomerModel _$AddCustomerModelFromJson(Map<String, dynamic> json) {
  return _AddCustomerModel.fromJson(json);
}

/// @nodoc
mixin _$AddCustomerModel {
  @JsonKey(name: 'Password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'FullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'NationalId')
  String? get nationalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PhoneNumber')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsAcknowledged')
  bool? get isAcknowledged => throw _privateConstructorUsedError;

  /// Serializes this AddCustomerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCustomerModelCopyWith<AddCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerModelCopyWith<$Res> {
  factory $AddCustomerModelCopyWith(
          AddCustomerModel value, $Res Function(AddCustomerModel) then) =
      _$AddCustomerModelCopyWithImpl<$Res, AddCustomerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'FullName') String? fullName,
      @JsonKey(name: 'NationalId') String? nationalId,
      @JsonKey(name: 'PhoneNumber') String? phone,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'IsAcknowledged') bool? isAcknowledged});
}

/// @nodoc
class _$AddCustomerModelCopyWithImpl<$Res, $Val extends AddCustomerModel>
    implements $AddCustomerModelCopyWith<$Res> {
  _$AddCustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? fullName = freezed,
    Object? nationalId = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? isAcknowledged = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isAcknowledged: freezed == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCustomerModelImplCopyWith<$Res>
    implements $AddCustomerModelCopyWith<$Res> {
  factory _$$AddCustomerModelImplCopyWith(_$AddCustomerModelImpl value,
          $Res Function(_$AddCustomerModelImpl) then) =
      __$$AddCustomerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Password') String? password,
      @JsonKey(name: 'FullName') String? fullName,
      @JsonKey(name: 'NationalId') String? nationalId,
      @JsonKey(name: 'PhoneNumber') String? phone,
      @JsonKey(name: 'Email') String? email,
      @JsonKey(name: 'IsAcknowledged') bool? isAcknowledged});
}

/// @nodoc
class __$$AddCustomerModelImplCopyWithImpl<$Res>
    extends _$AddCustomerModelCopyWithImpl<$Res, _$AddCustomerModelImpl>
    implements _$$AddCustomerModelImplCopyWith<$Res> {
  __$$AddCustomerModelImplCopyWithImpl(_$AddCustomerModelImpl _value,
      $Res Function(_$AddCustomerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? fullName = freezed,
    Object? nationalId = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? isAcknowledged = freezed,
  }) {
    return _then(_$AddCustomerModelImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      nationalId: freezed == nationalId
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isAcknowledged: freezed == isAcknowledged
          ? _value.isAcknowledged
          : isAcknowledged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCustomerModelImpl implements _AddCustomerModel {
  const _$AddCustomerModelImpl(
      {@JsonKey(name: 'Password') this.password,
      @JsonKey(name: 'FullName') this.fullName,
      @JsonKey(name: 'NationalId') this.nationalId,
      @JsonKey(name: 'PhoneNumber') this.phone,
      @JsonKey(name: 'Email') this.email,
      @JsonKey(name: 'IsAcknowledged') this.isAcknowledged});

  factory _$AddCustomerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCustomerModelImplFromJson(json);

  @override
  @JsonKey(name: 'Password')
  final String? password;
  @override
  @JsonKey(name: 'FullName')
  final String? fullName;
  @override
  @JsonKey(name: 'NationalId')
  final String? nationalId;
  @override
  @JsonKey(name: 'PhoneNumber')
  final String? phone;
  @override
  @JsonKey(name: 'Email')
  final String? email;
  @override
  @JsonKey(name: 'IsAcknowledged')
  final bool? isAcknowledged;

  @override
  String toString() {
    return 'AddCustomerModel(password: $password, fullName: $fullName, nationalId: $nationalId, phone: $phone, email: $email, isAcknowledged: $isAcknowledged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerModelImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nationalId, nationalId) ||
                other.nationalId == nationalId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isAcknowledged, isAcknowledged) ||
                other.isAcknowledged == isAcknowledged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, password, fullName, nationalId,
      phone, email, isAcknowledged);

  /// Create a copy of AddCustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCustomerModelImplCopyWith<_$AddCustomerModelImpl> get copyWith =>
      __$$AddCustomerModelImplCopyWithImpl<_$AddCustomerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCustomerModelImplToJson(
      this,
    );
  }
}

abstract class _AddCustomerModel implements AddCustomerModel {
  const factory _AddCustomerModel(
          {@JsonKey(name: 'Password') final String? password,
          @JsonKey(name: 'FullName') final String? fullName,
          @JsonKey(name: 'NationalId') final String? nationalId,
          @JsonKey(name: 'PhoneNumber') final String? phone,
          @JsonKey(name: 'Email') final String? email,
          @JsonKey(name: 'IsAcknowledged') final bool? isAcknowledged}) =
      _$AddCustomerModelImpl;

  factory _AddCustomerModel.fromJson(Map<String, dynamic> json) =
      _$AddCustomerModelImpl.fromJson;

  @override
  @JsonKey(name: 'Password')
  String? get password;
  @override
  @JsonKey(name: 'FullName')
  String? get fullName;
  @override
  @JsonKey(name: 'NationalId')
  String? get nationalId;
  @override
  @JsonKey(name: 'PhoneNumber')
  String? get phone;
  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(name: 'IsAcknowledged')
  bool? get isAcknowledged;

  /// Create a copy of AddCustomerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCustomerModelImplCopyWith<_$AddCustomerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
