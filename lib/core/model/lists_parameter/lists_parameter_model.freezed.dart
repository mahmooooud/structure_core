// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lists_parameter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListsParameterModel _$ListsParameterModelFromJson(Map<String, dynamic> json) {
  return _RequestsParameterModel.fromJson(json);
}

/// @nodoc
mixin _$ListsParameterModel {
  @JsonKey(name: "FilterModel", includeIfNull: false)
  FilterModel? get filterModel => throw _privateConstructorUsedError;
  @JsonKey(name: "OrderModel", includeIfNull: false)
  SortModel? get sortModel => throw _privateConstructorUsedError;
  @JsonKey(name: "PageNumber", toJson: pageNumberToJson)
  int? get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "PageSize", toJson: pageSizeToJson)
  int? get pageSize => throw _privateConstructorUsedError;

  /// Serializes this ListsParameterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListsParameterModelCopyWith<ListsParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListsParameterModelCopyWith<$Res> {
  factory $ListsParameterModelCopyWith(
          ListsParameterModel value, $Res Function(ListsParameterModel) then) =
      _$ListsParameterModelCopyWithImpl<$Res, ListsParameterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "FilterModel", includeIfNull: false)
      FilterModel? filterModel,
      @JsonKey(name: "OrderModel", includeIfNull: false) SortModel? sortModel,
      @JsonKey(name: "PageNumber", toJson: pageNumberToJson) int? pageNumber,
      @JsonKey(name: "PageSize", toJson: pageSizeToJson) int? pageSize});

  $FilterModelCopyWith<$Res>? get filterModel;
  $SortModelCopyWith<$Res>? get sortModel;
}

/// @nodoc
class _$ListsParameterModelCopyWithImpl<$Res, $Val extends ListsParameterModel>
    implements $ListsParameterModelCopyWith<$Res> {
  _$ListsParameterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterModel = freezed,
    Object? sortModel = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      filterModel: freezed == filterModel
          ? _value.filterModel
          : filterModel // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      sortModel: freezed == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as SortModel?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilterModelCopyWith<$Res>? get filterModel {
    if (_value.filterModel == null) {
      return null;
    }

    return $FilterModelCopyWith<$Res>(_value.filterModel!, (value) {
      return _then(_value.copyWith(filterModel: value) as $Val);
    });
  }

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SortModelCopyWith<$Res>? get sortModel {
    if (_value.sortModel == null) {
      return null;
    }

    return $SortModelCopyWith<$Res>(_value.sortModel!, (value) {
      return _then(_value.copyWith(sortModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestsParameterModelImplCopyWith<$Res>
    implements $ListsParameterModelCopyWith<$Res> {
  factory _$$RequestsParameterModelImplCopyWith(
          _$RequestsParameterModelImpl value,
          $Res Function(_$RequestsParameterModelImpl) then) =
      __$$RequestsParameterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "FilterModel", includeIfNull: false)
      FilterModel? filterModel,
      @JsonKey(name: "OrderModel", includeIfNull: false) SortModel? sortModel,
      @JsonKey(name: "PageNumber", toJson: pageNumberToJson) int? pageNumber,
      @JsonKey(name: "PageSize", toJson: pageSizeToJson) int? pageSize});

  @override
  $FilterModelCopyWith<$Res>? get filterModel;
  @override
  $SortModelCopyWith<$Res>? get sortModel;
}

/// @nodoc
class __$$RequestsParameterModelImplCopyWithImpl<$Res>
    extends _$ListsParameterModelCopyWithImpl<$Res,
        _$RequestsParameterModelImpl>
    implements _$$RequestsParameterModelImplCopyWith<$Res> {
  __$$RequestsParameterModelImplCopyWithImpl(
      _$RequestsParameterModelImpl _value,
      $Res Function(_$RequestsParameterModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterModel = freezed,
    Object? sortModel = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_$RequestsParameterModelImpl(
      filterModel: freezed == filterModel
          ? _value.filterModel
          : filterModel // ignore: cast_nullable_to_non_nullable
              as FilterModel?,
      sortModel: freezed == sortModel
          ? _value.sortModel
          : sortModel // ignore: cast_nullable_to_non_nullable
              as SortModel?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestsParameterModelImpl implements _RequestsParameterModel {
  const _$RequestsParameterModelImpl(
      {@JsonKey(name: "FilterModel", includeIfNull: false) this.filterModel,
      @JsonKey(name: "OrderModel", includeIfNull: false) this.sortModel,
      @JsonKey(name: "PageNumber", toJson: pageNumberToJson) this.pageNumber,
      @JsonKey(name: "PageSize", toJson: pageSizeToJson) this.pageSize});

  factory _$RequestsParameterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestsParameterModelImplFromJson(json);

  @override
  @JsonKey(name: "FilterModel", includeIfNull: false)
  final FilterModel? filterModel;
  @override
  @JsonKey(name: "OrderModel", includeIfNull: false)
  final SortModel? sortModel;
  @override
  @JsonKey(name: "PageNumber", toJson: pageNumberToJson)
  final int? pageNumber;
  @override
  @JsonKey(name: "PageSize", toJson: pageSizeToJson)
  final int? pageSize;

  @override
  String toString() {
    return 'ListsParameterModel(filterModel: $filterModel, sortModel: $sortModel, pageNumber: $pageNumber, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsParameterModelImpl &&
            (identical(other.filterModel, filterModel) ||
                other.filterModel == filterModel) &&
            (identical(other.sortModel, sortModel) ||
                other.sortModel == sortModel) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, filterModel, sortModel, pageNumber, pageSize);

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsParameterModelImplCopyWith<_$RequestsParameterModelImpl>
      get copyWith => __$$RequestsParameterModelImplCopyWithImpl<
          _$RequestsParameterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestsParameterModelImplToJson(
      this,
    );
  }
}

abstract class _RequestsParameterModel implements ListsParameterModel {
  const factory _RequestsParameterModel(
      {@JsonKey(name: "FilterModel", includeIfNull: false)
      final FilterModel? filterModel,
      @JsonKey(name: "OrderModel", includeIfNull: false)
      final SortModel? sortModel,
      @JsonKey(name: "PageNumber", toJson: pageNumberToJson)
      final int? pageNumber,
      @JsonKey(name: "PageSize", toJson: pageSizeToJson)
      final int? pageSize}) = _$RequestsParameterModelImpl;

  factory _RequestsParameterModel.fromJson(Map<String, dynamic> json) =
      _$RequestsParameterModelImpl.fromJson;

  @override
  @JsonKey(name: "FilterModel", includeIfNull: false)
  FilterModel? get filterModel;
  @override
  @JsonKey(name: "OrderModel", includeIfNull: false)
  SortModel? get sortModel;
  @override
  @JsonKey(name: "PageNumber", toJson: pageNumberToJson)
  int? get pageNumber;
  @override
  @JsonKey(name: "PageSize", toJson: pageSizeToJson)
  int? get pageSize;

  /// Create a copy of ListsParameterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestsParameterModelImplCopyWith<_$RequestsParameterModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
