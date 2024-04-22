// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? model) isSuccess,
    required TResult Function(BaseError error) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? model)? isSuccess,
    TResult? Function(BaseError error)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? model)? isSuccess,
    TResult Function(BaseError error)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSuccess<T> value) isSuccess,
    required TResult Function(IsError<T> value) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSuccess<T> value)? isSuccess,
    TResult? Function(IsError<T> value)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSuccess<T> value)? isSuccess,
    TResult Function(IsError<T> value)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyResultCopyWith<T, $Res> {
  factory $MyResultCopyWith(
          MyResult<T> value, $Res Function(MyResult<T>) then) =
      _$MyResultCopyWithImpl<T, $Res, MyResult<T>>;
}

/// @nodoc
class _$MyResultCopyWithImpl<T, $Res, $Val extends MyResult<T>>
    implements $MyResultCopyWith<T, $Res> {
  _$MyResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsSuccessImplCopyWith<T, $Res> {
  factory _$$IsSuccessImplCopyWith(
          _$IsSuccessImpl<T> value, $Res Function(_$IsSuccessImpl<T>) then) =
      __$$IsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? model});
}

/// @nodoc
class __$$IsSuccessImplCopyWithImpl<T, $Res>
    extends _$MyResultCopyWithImpl<T, $Res, _$IsSuccessImpl<T>>
    implements _$$IsSuccessImplCopyWith<T, $Res> {
  __$$IsSuccessImplCopyWithImpl(
      _$IsSuccessImpl<T> _value, $Res Function(_$IsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$IsSuccessImpl<T>(
      freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$IsSuccessImpl<T> implements IsSuccess<T> {
  const _$IsSuccessImpl([this.model]);

  @override
  final T? model;

  @override
  String toString() {
    return 'MyResult<$T>.isSuccess(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsSuccessImplCopyWith<T, _$IsSuccessImpl<T>> get copyWith =>
      __$$IsSuccessImplCopyWithImpl<T, _$IsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? model) isSuccess,
    required TResult Function(BaseError error) isError,
  }) {
    return isSuccess(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? model)? isSuccess,
    TResult? Function(BaseError error)? isError,
  }) {
    return isSuccess?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? model)? isSuccess,
    TResult Function(BaseError error)? isError,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSuccess<T> value) isSuccess,
    required TResult Function(IsError<T> value) isError,
  }) {
    return isSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSuccess<T> value)? isSuccess,
    TResult? Function(IsError<T> value)? isError,
  }) {
    return isSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSuccess<T> value)? isSuccess,
    TResult Function(IsError<T> value)? isError,
    required TResult orElse(),
  }) {
    if (isSuccess != null) {
      return isSuccess(this);
    }
    return orElse();
  }
}

abstract class IsSuccess<T> implements MyResult<T> {
  const factory IsSuccess([final T? model]) = _$IsSuccessImpl<T>;

  T? get model;
  @JsonKey(ignore: true)
  _$$IsSuccessImplCopyWith<T, _$IsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsErrorImplCopyWith<T, $Res> {
  factory _$$IsErrorImplCopyWith(
          _$IsErrorImpl<T> value, $Res Function(_$IsErrorImpl<T>) then) =
      __$$IsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({BaseError error});
}

/// @nodoc
class __$$IsErrorImplCopyWithImpl<T, $Res>
    extends _$MyResultCopyWithImpl<T, $Res, _$IsErrorImpl<T>>
    implements _$$IsErrorImplCopyWith<T, $Res> {
  __$$IsErrorImplCopyWithImpl(
      _$IsErrorImpl<T> _value, $Res Function(_$IsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$IsErrorImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as BaseError,
    ));
  }
}

/// @nodoc

class _$IsErrorImpl<T> implements IsError<T> {
  const _$IsErrorImpl(this.error);

  @override
  final BaseError error;

  @override
  String toString() {
    return 'MyResult<$T>.isError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsErrorImplCopyWith<T, _$IsErrorImpl<T>> get copyWith =>
      __$$IsErrorImplCopyWithImpl<T, _$IsErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? model) isSuccess,
    required TResult Function(BaseError error) isError,
  }) {
    return isError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? model)? isSuccess,
    TResult? Function(BaseError error)? isError,
  }) {
    return isError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? model)? isSuccess,
    TResult Function(BaseError error)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsSuccess<T> value) isSuccess,
    required TResult Function(IsError<T> value) isError,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsSuccess<T> value)? isSuccess,
    TResult? Function(IsError<T> value)? isError,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsSuccess<T> value)? isSuccess,
    TResult Function(IsError<T> value)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class IsError<T> implements MyResult<T> {
  const factory IsError(final BaseError error) = _$IsErrorImpl<T>;

  BaseError get error;
  @JsonKey(ignore: true)
  _$$IsErrorImplCopyWith<T, _$IsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
