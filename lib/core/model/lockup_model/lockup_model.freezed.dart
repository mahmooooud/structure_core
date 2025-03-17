// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lockup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LockupModel _$LockupModelFromJson(Map<String, dynamic> json) {
  return _LockupModel.fromJson(json);
}

/// @nodoc
mixin _$LockupModel {
  @JsonKey(name: 'Id')
  int? get Id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get Name => throw _privateConstructorUsedError;

  /// Serializes this LockupModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LockupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LockupModelCopyWith<LockupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockupModelCopyWith<$Res> {
  factory $LockupModelCopyWith(
          LockupModel value, $Res Function(LockupModel) then) =
      _$LockupModelCopyWithImpl<$Res, LockupModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? Id, @JsonKey(name: 'Name') String? Name});
}

/// @nodoc
class _$LockupModelCopyWithImpl<$Res, $Val extends LockupModel>
    implements $LockupModelCopyWith<$Res> {
  _$LockupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LockupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = freezed,
    Object? Name = freezed,
  }) {
    return _then(_value.copyWith(
      Id: freezed == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LockupModelImplCopyWith<$Res>
    implements $LockupModelCopyWith<$Res> {
  factory _$$LockupModelImplCopyWith(
          _$LockupModelImpl value, $Res Function(_$LockupModelImpl) then) =
      __$$LockupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? Id, @JsonKey(name: 'Name') String? Name});
}

/// @nodoc
class __$$LockupModelImplCopyWithImpl<$Res>
    extends _$LockupModelCopyWithImpl<$Res, _$LockupModelImpl>
    implements _$$LockupModelImplCopyWith<$Res> {
  __$$LockupModelImplCopyWithImpl(
      _$LockupModelImpl _value, $Res Function(_$LockupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LockupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Id = freezed,
    Object? Name = freezed,
  }) {
    return _then(_$LockupModelImpl(
      Id: freezed == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int?,
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LockupModelImpl implements _LockupModel {
  const _$LockupModelImpl(
      {@JsonKey(name: 'Id') this.Id, @JsonKey(name: 'Name') this.Name});

  factory _$LockupModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LockupModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? Id;
  @override
  @JsonKey(name: 'Name')
  final String? Name;

  @override
  String toString() {
    return 'LockupModel(Id: $Id, Name: $Name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LockupModelImpl &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.Name, Name) || other.Name == Name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Id, Name);

  /// Create a copy of LockupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LockupModelImplCopyWith<_$LockupModelImpl> get copyWith =>
      __$$LockupModelImplCopyWithImpl<_$LockupModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LockupModelImplToJson(
      this,
    );
  }
}

abstract class _LockupModel implements LockupModel {
  const factory _LockupModel(
      {@JsonKey(name: 'Id') final int? Id,
      @JsonKey(name: 'Name') final String? Name}) = _$LockupModelImpl;

  factory _LockupModel.fromJson(Map<String, dynamic> json) =
      _$LockupModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get Id;
  @override
  @JsonKey(name: 'Name')
  String? get Name;

  /// Create a copy of LockupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LockupModelImplCopyWith<_$LockupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
