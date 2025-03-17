// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_attachment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadAttachmentResponse _$UploadAttachmentResponseFromJson(
    Map<String, dynamic> json) {
  return _UploadAttachmentResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadAttachmentResponse {
  @JsonKey(name: "Data")
  List<UploadAttachmentModel>? get data => throw _privateConstructorUsedError;

  /// Serializes this UploadAttachmentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadAttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadAttachmentResponseCopyWith<UploadAttachmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAttachmentResponseCopyWith<$Res> {
  factory $UploadAttachmentResponseCopyWith(UploadAttachmentResponse value,
          $Res Function(UploadAttachmentResponse) then) =
      _$UploadAttachmentResponseCopyWithImpl<$Res, UploadAttachmentResponse>;
  @useResult
  $Res call({@JsonKey(name: "Data") List<UploadAttachmentModel>? data});
}

/// @nodoc
class _$UploadAttachmentResponseCopyWithImpl<$Res,
        $Val extends UploadAttachmentResponse>
    implements $UploadAttachmentResponseCopyWith<$Res> {
  _$UploadAttachmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadAttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UploadAttachmentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadAttachmentResponseImplCopyWith<$Res>
    implements $UploadAttachmentResponseCopyWith<$Res> {
  factory _$$UploadAttachmentResponseImplCopyWith(
          _$UploadAttachmentResponseImpl value,
          $Res Function(_$UploadAttachmentResponseImpl) then) =
      __$$UploadAttachmentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Data") List<UploadAttachmentModel>? data});
}

/// @nodoc
class __$$UploadAttachmentResponseImplCopyWithImpl<$Res>
    extends _$UploadAttachmentResponseCopyWithImpl<$Res,
        _$UploadAttachmentResponseImpl>
    implements _$$UploadAttachmentResponseImplCopyWith<$Res> {
  __$$UploadAttachmentResponseImplCopyWithImpl(
      _$UploadAttachmentResponseImpl _value,
      $Res Function(_$UploadAttachmentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadAttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UploadAttachmentResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UploadAttachmentModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAttachmentResponseImpl implements _UploadAttachmentResponse {
  const _$UploadAttachmentResponseImpl(
      {@JsonKey(name: "Data") final List<UploadAttachmentModel>? data})
      : _data = data;

  factory _$UploadAttachmentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAttachmentResponseImplFromJson(json);

  final List<UploadAttachmentModel>? _data;
  @override
  @JsonKey(name: "Data")
  List<UploadAttachmentModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UploadAttachmentResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAttachmentResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UploadAttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAttachmentResponseImplCopyWith<_$UploadAttachmentResponseImpl>
      get copyWith => __$$UploadAttachmentResponseImplCopyWithImpl<
          _$UploadAttachmentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAttachmentResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadAttachmentResponse implements UploadAttachmentResponse {
  const factory _UploadAttachmentResponse(
          {@JsonKey(name: "Data") final List<UploadAttachmentModel>? data}) =
      _$UploadAttachmentResponseImpl;

  factory _UploadAttachmentResponse.fromJson(Map<String, dynamic> json) =
      _$UploadAttachmentResponseImpl.fromJson;

  @override
  @JsonKey(name: "Data")
  List<UploadAttachmentModel>? get data;

  /// Create a copy of UploadAttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAttachmentResponseImplCopyWith<_$UploadAttachmentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
