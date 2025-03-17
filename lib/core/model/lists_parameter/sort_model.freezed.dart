// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SortModel _$SortModelFromJson(Map<String, dynamic> json) {
  return _SortModel.fromJson(json);
}

/// @nodoc
mixin _$SortModel {
  @JsonKey(name: 'FieldName')
  String? get fieldName => throw _privateConstructorUsedError;
  @JsonKey(name: 'SortType')
  String? get sortType => throw _privateConstructorUsedError;

  /// Serializes this SortModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SortModelCopyWith<SortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortModelCopyWith<$Res> {
  factory $SortModelCopyWith(SortModel value, $Res Function(SortModel) then) =
      _$SortModelCopyWithImpl<$Res, SortModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'FieldName') String? fieldName,
      @JsonKey(name: 'SortType') String? sortType});
}

/// @nodoc
class _$SortModelCopyWithImpl<$Res, $Val extends SortModel>
    implements $SortModelCopyWith<$Res> {
  _$SortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = freezed,
    Object? sortType = freezed,
  }) {
    return _then(_value.copyWith(
      fieldName: freezed == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SortModelImplCopyWith<$Res>
    implements $SortModelCopyWith<$Res> {
  factory _$$SortModelImplCopyWith(
          _$SortModelImpl value, $Res Function(_$SortModelImpl) then) =
      __$$SortModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'FieldName') String? fieldName,
      @JsonKey(name: 'SortType') String? sortType});
}

/// @nodoc
class __$$SortModelImplCopyWithImpl<$Res>
    extends _$SortModelCopyWithImpl<$Res, _$SortModelImpl>
    implements _$$SortModelImplCopyWith<$Res> {
  __$$SortModelImplCopyWithImpl(
      _$SortModelImpl _value, $Res Function(_$SortModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SortModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = freezed,
    Object? sortType = freezed,
  }) {
    return _then(_$SortModelImpl(
      fieldName: freezed == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String?,
      sortType: freezed == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SortModelImpl implements _SortModel {
  const _$SortModelImpl(
      {@JsonKey(name: 'FieldName') this.fieldName,
      @JsonKey(name: 'SortType') this.sortType});

  factory _$SortModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SortModelImplFromJson(json);

  @override
  @JsonKey(name: 'FieldName')
  final String? fieldName;
  @override
  @JsonKey(name: 'SortType')
  final String? sortType;

  @override
  String toString() {
    return 'SortModel(fieldName: $fieldName, sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortModelImpl &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fieldName, sortType);

  /// Create a copy of SortModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortModelImplCopyWith<_$SortModelImpl> get copyWith =>
      __$$SortModelImplCopyWithImpl<_$SortModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SortModelImplToJson(
      this,
    );
  }
}

abstract class _SortModel implements SortModel {
  const factory _SortModel(
      {@JsonKey(name: 'FieldName') final String? fieldName,
      @JsonKey(name: 'SortType') final String? sortType}) = _$SortModelImpl;

  factory _SortModel.fromJson(Map<String, dynamic> json) =
      _$SortModelImpl.fromJson;

  @override
  @JsonKey(name: 'FieldName')
  String? get fieldName;
  @override
  @JsonKey(name: 'SortType')
  String? get sortType;

  /// Create a copy of SortModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortModelImplCopyWith<_$SortModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
