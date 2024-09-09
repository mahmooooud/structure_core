// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterParams _$FilterParamsFromJson(Map<String, dynamic> json) {
  return _FilterParams.fromJson(json);
}

/// @nodoc
mixin _$FilterParams {
  @JsonKey(name: "where", includeIfNull: false, nullable: true)
  FilterWhereParams? get where => throw _privateConstructorUsedError;
  @JsonKey(name: "skip", includeIfNull: false, nullable: true)
  int? get skip => throw _privateConstructorUsedError;
  @JsonKey(name: "limit", includeIfNull: false, nullable: true)
  int? get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "order", includeIfNull: false, nullable: true)
  List<String?>? get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterParamsCopyWith<FilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterParamsCopyWith<$Res> {
  factory $FilterParamsCopyWith(
          FilterParams value, $Res Function(FilterParams) then) =
      _$FilterParamsCopyWithImpl<$Res, FilterParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "where", includeIfNull: false, nullable: true)
      FilterWhereParams? where,
      @JsonKey(name: "skip", includeIfNull: false, nullable: true) int? skip,
      @JsonKey(name: "limit", includeIfNull: false, nullable: true) int? limit,
      @JsonKey(name: "order", includeIfNull: false, nullable: true)
      List<String?>? order});

  $FilterWhereParamsCopyWith<$Res>? get where;
}

/// @nodoc
class _$FilterParamsCopyWithImpl<$Res, $Val extends FilterParams>
    implements $FilterParamsCopyWith<$Res> {
  _$FilterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? where = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      where: freezed == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as FilterWhereParams?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterWhereParamsCopyWith<$Res>? get where {
    if (_value.where == null) {
      return null;
    }

    return $FilterWhereParamsCopyWith<$Res>(_value.where!, (value) {
      return _then(_value.copyWith(where: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FilterParamsImplCopyWith<$Res>
    implements $FilterParamsCopyWith<$Res> {
  factory _$$FilterParamsImplCopyWith(
          _$FilterParamsImpl value, $Res Function(_$FilterParamsImpl) then) =
      __$$FilterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "where", includeIfNull: false, nullable: true)
      FilterWhereParams? where,
      @JsonKey(name: "skip", includeIfNull: false, nullable: true) int? skip,
      @JsonKey(name: "limit", includeIfNull: false, nullable: true) int? limit,
      @JsonKey(name: "order", includeIfNull: false, nullable: true)
      List<String?>? order});

  @override
  $FilterWhereParamsCopyWith<$Res>? get where;
}

/// @nodoc
class __$$FilterParamsImplCopyWithImpl<$Res>
    extends _$FilterParamsCopyWithImpl<$Res, _$FilterParamsImpl>
    implements _$$FilterParamsImplCopyWith<$Res> {
  __$$FilterParamsImplCopyWithImpl(
      _$FilterParamsImpl _value, $Res Function(_$FilterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? where = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
    Object? order = freezed,
  }) {
    return _then(_$FilterParamsImpl(
      where: freezed == where
          ? _value.where
          : where // ignore: cast_nullable_to_non_nullable
              as FilterWhereParams?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FilterParamsImpl implements _FilterParams {
  const _$FilterParamsImpl(
      {@JsonKey(name: "where", includeIfNull: false, nullable: true) this.where,
      @JsonKey(name: "skip", includeIfNull: false, nullable: true) this.skip,
      @JsonKey(name: "limit", includeIfNull: false, nullable: true) this.limit,
      @JsonKey(name: "order", includeIfNull: false, nullable: true)
      final List<String?>? order})
      : _order = order;

  factory _$FilterParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterParamsImplFromJson(json);

  @override
  @JsonKey(name: "where", includeIfNull: false, nullable: true)
  final FilterWhereParams? where;
  @override
  @JsonKey(name: "skip", includeIfNull: false, nullable: true)
  final int? skip;
  @override
  @JsonKey(name: "limit", includeIfNull: false, nullable: true)
  final int? limit;
  final List<String?>? _order;
  @override
  @JsonKey(name: "order", includeIfNull: false, nullable: true)
  List<String?>? get order {
    final value = _order;
    if (value == null) return null;
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterParams(where: $where, skip: $skip, limit: $limit, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterParamsImpl &&
            (identical(other.where, where) || other.where == where) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other._order, _order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, where, skip, limit,
      const DeepCollectionEquality().hash(_order));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterParamsImplCopyWith<_$FilterParamsImpl> get copyWith =>
      __$$FilterParamsImplCopyWithImpl<_$FilterParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterParamsImplToJson(
      this,
    );
  }
}

abstract class _FilterParams implements FilterParams {
  const factory _FilterParams(
      {@JsonKey(name: "where", includeIfNull: false, nullable: true)
      final FilterWhereParams? where,
      @JsonKey(name: "skip", includeIfNull: false, nullable: true)
      final int? skip,
      @JsonKey(name: "limit", includeIfNull: false, nullable: true)
      final int? limit,
      @JsonKey(name: "order", includeIfNull: false, nullable: true)
      final List<String?>? order}) = _$FilterParamsImpl;

  factory _FilterParams.fromJson(Map<String, dynamic> json) =
      _$FilterParamsImpl.fromJson;

  @override
  @JsonKey(name: "where", includeIfNull: false, nullable: true)
  FilterWhereParams? get where;
  @override
  @JsonKey(name: "skip", includeIfNull: false, nullable: true)
  int? get skip;
  @override
  @JsonKey(name: "limit", includeIfNull: false, nullable: true)
  int? get limit;
  @override
  @JsonKey(name: "order", includeIfNull: false, nullable: true)
  List<String?>? get order;
  @override
  @JsonKey(ignore: true)
  _$$FilterParamsImplCopyWith<_$FilterParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FilterWhereParams _$FilterWhereParamsFromJson(Map<String, dynamic> json) {
  return _FilterWhereParams.fromJson(json);
}

/// @nodoc
mixin _$FilterWhereParams {
  @JsonKey(name: "state", nullable: true, includeIfNull: false)
  dynamic get state => throw _privateConstructorUsedError;
  @JsonKey(name: "type", nullable: true, includeIfNull: false)
  dynamic get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterWhereParamsCopyWith<FilterWhereParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterWhereParamsCopyWith<$Res> {
  factory $FilterWhereParamsCopyWith(
          FilterWhereParams value, $Res Function(FilterWhereParams) then) =
      _$FilterWhereParamsCopyWithImpl<$Res, FilterWhereParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "state", nullable: true, includeIfNull: false)
      dynamic state,
      @JsonKey(name: "type", nullable: true, includeIfNull: false)
      dynamic type});
}

/// @nodoc
class _$FilterWhereParamsCopyWithImpl<$Res, $Val extends FilterWhereParams>
    implements $FilterWhereParamsCopyWith<$Res> {
  _$FilterWhereParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterWhereParamsImplCopyWith<$Res>
    implements $FilterWhereParamsCopyWith<$Res> {
  factory _$$FilterWhereParamsImplCopyWith(_$FilterWhereParamsImpl value,
          $Res Function(_$FilterWhereParamsImpl) then) =
      __$$FilterWhereParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "state", nullable: true, includeIfNull: false)
      dynamic state,
      @JsonKey(name: "type", nullable: true, includeIfNull: false)
      dynamic type});
}

/// @nodoc
class __$$FilterWhereParamsImplCopyWithImpl<$Res>
    extends _$FilterWhereParamsCopyWithImpl<$Res, _$FilterWhereParamsImpl>
    implements _$$FilterWhereParamsImplCopyWith<$Res> {
  __$$FilterWhereParamsImplCopyWithImpl(_$FilterWhereParamsImpl _value,
      $Res Function(_$FilterWhereParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? type = freezed,
  }) {
    return _then(_$FilterWhereParamsImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FilterWhereParamsImpl implements _FilterWhereParams {
  const _$FilterWhereParamsImpl(
      {@JsonKey(name: "state", nullable: true, includeIfNull: false) this.state,
      @JsonKey(name: "type", nullable: true, includeIfNull: false) this.type});

  factory _$FilterWhereParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterWhereParamsImplFromJson(json);

  @override
  @JsonKey(name: "state", nullable: true, includeIfNull: false)
  final dynamic state;
  @override
  @JsonKey(name: "type", nullable: true, includeIfNull: false)
  final dynamic type;

  @override
  String toString() {
    return 'FilterWhereParams(state: $state, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterWhereParamsImpl &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterWhereParamsImplCopyWith<_$FilterWhereParamsImpl> get copyWith =>
      __$$FilterWhereParamsImplCopyWithImpl<_$FilterWhereParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterWhereParamsImplToJson(
      this,
    );
  }
}

abstract class _FilterWhereParams implements FilterWhereParams {
  const factory _FilterWhereParams(
      {@JsonKey(name: "state", nullable: true, includeIfNull: false)
      final dynamic state,
      @JsonKey(name: "type", nullable: true, includeIfNull: false)
      final dynamic type}) = _$FilterWhereParamsImpl;

  factory _FilterWhereParams.fromJson(Map<String, dynamic> json) =
      _$FilterWhereParamsImpl.fromJson;

  @override
  @JsonKey(name: "state", nullable: true, includeIfNull: false)
  dynamic get state;
  @override
  @JsonKey(name: "type", nullable: true, includeIfNull: false)
  dynamic get type;
  @override
  @JsonKey(ignore: true)
  _$$FilterWhereParamsImplCopyWith<_$FilterWhereParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
