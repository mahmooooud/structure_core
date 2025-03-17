// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterModel _$FilterModelFromJson(Map<String, dynamic> json) {
  return _FilterModel.fromJson(json);
}

/// @nodoc
mixin _$FilterModel {
  @JsonKey(name: "Id", includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Title", includeIfNull: false)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "Status", includeIfNull: false)
  List<String>? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "UserType", includeIfNull: false)
  String? get userType => throw _privateConstructorUsedError;
  @JsonKey(name: "IsActive", includeIfNull: false)
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this FilterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res, FilterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Id", includeIfNull: false) int? id,
      @JsonKey(name: "Title", includeIfNull: false) String? title,
      @JsonKey(name: "Status", includeIfNull: false) List<String>? status,
      @JsonKey(name: "UserType", includeIfNull: false) String? userType,
      @JsonKey(name: "IsActive", includeIfNull: false) bool? isActive});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res, $Val extends FilterModel>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? userType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterModelImplCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$FilterModelImplCopyWith(
          _$FilterModelImpl value, $Res Function(_$FilterModelImpl) then) =
      __$$FilterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Id", includeIfNull: false) int? id,
      @JsonKey(name: "Title", includeIfNull: false) String? title,
      @JsonKey(name: "Status", includeIfNull: false) List<String>? status,
      @JsonKey(name: "UserType", includeIfNull: false) String? userType,
      @JsonKey(name: "IsActive", includeIfNull: false) bool? isActive});
}

/// @nodoc
class __$$FilterModelImplCopyWithImpl<$Res>
    extends _$FilterModelCopyWithImpl<$Res, _$FilterModelImpl>
    implements _$$FilterModelImplCopyWith<$Res> {
  __$$FilterModelImplCopyWithImpl(
      _$FilterModelImpl _value, $Res Function(_$FilterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? userType = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$FilterModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterModelImpl implements _FilterModel {
  const _$FilterModelImpl(
      {@JsonKey(name: "Id", includeIfNull: false) this.id,
      @JsonKey(name: "Title", includeIfNull: false) this.title,
      @JsonKey(name: "Status", includeIfNull: false) final List<String>? status,
      @JsonKey(name: "UserType", includeIfNull: false) this.userType,
      @JsonKey(name: "IsActive", includeIfNull: false) this.isActive})
      : _status = status;

  factory _$FilterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterModelImplFromJson(json);

  @override
  @JsonKey(name: "Id", includeIfNull: false)
  final int? id;
  @override
  @JsonKey(name: "Title", includeIfNull: false)
  final String? title;
  final List<String>? _status;
  @override
  @JsonKey(name: "Status", includeIfNull: false)
  List<String>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "UserType", includeIfNull: false)
  final String? userType;
  @override
  @JsonKey(name: "IsActive", includeIfNull: false)
  final bool? isActive;

  @override
  String toString() {
    return 'FilterModel(id: $id, title: $title, status: $status, userType: $userType, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_status), userType, isActive);

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      __$$FilterModelImplCopyWithImpl<_$FilterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterModelImplToJson(
      this,
    );
  }
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {@JsonKey(name: "Id", includeIfNull: false) final int? id,
      @JsonKey(name: "Title", includeIfNull: false) final String? title,
      @JsonKey(name: "Status", includeIfNull: false) final List<String>? status,
      @JsonKey(name: "UserType", includeIfNull: false) final String? userType,
      @JsonKey(name: "IsActive", includeIfNull: false)
      final bool? isActive}) = _$FilterModelImpl;

  factory _FilterModel.fromJson(Map<String, dynamic> json) =
      _$FilterModelImpl.fromJson;

  @override
  @JsonKey(name: "Id", includeIfNull: false)
  int? get id;
  @override
  @JsonKey(name: "Title", includeIfNull: false)
  String? get title;
  @override
  @JsonKey(name: "Status", includeIfNull: false)
  List<String>? get status;
  @override
  @JsonKey(name: "UserType", includeIfNull: false)
  String? get userType;
  @override
  @JsonKey(name: "IsActive", includeIfNull: false)
  bool? get isActive;

  /// Create a copy of FilterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterModelImplCopyWith<_$FilterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
