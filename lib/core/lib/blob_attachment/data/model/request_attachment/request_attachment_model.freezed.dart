// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestAttachmentModel _$RequestAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _RequestAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$RequestAttachmentModel {
  @JsonKey(name: "Total")
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "PageNumber")
  int? get pageNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "PageSize")
  int? get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: "IsSuccess")
  bool? get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  List<AttachmentDataModel>? get attachmentData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestAttachmentModelCopyWith<RequestAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAttachmentModelCopyWith<$Res> {
  factory $RequestAttachmentModelCopyWith(RequestAttachmentModel value,
          $Res Function(RequestAttachmentModel) then) =
      _$RequestAttachmentModelCopyWithImpl<$Res, RequestAttachmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Total") int? total,
      @JsonKey(name: "PageNumber") int? pageNumber,
      @JsonKey(name: "PageSize") int? pageSize,
      @JsonKey(name: "IsSuccess") bool? isSuccess,
      @JsonKey(name: "Data") List<AttachmentDataModel>? attachmentData});
}

/// @nodoc
class _$RequestAttachmentModelCopyWithImpl<$Res,
        $Val extends RequestAttachmentModel>
    implements $RequestAttachmentModelCopyWith<$Res> {
  _$RequestAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? isSuccess = freezed,
    Object? attachmentData = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachmentData: freezed == attachmentData
          ? _value.attachmentData
          : attachmentData // ignore: cast_nullable_to_non_nullable
              as List<AttachmentDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAttachmentModelImplCopyWith<$Res>
    implements $RequestAttachmentModelCopyWith<$Res> {
  factory _$$RequestAttachmentModelImplCopyWith(
          _$RequestAttachmentModelImpl value,
          $Res Function(_$RequestAttachmentModelImpl) then) =
      __$$RequestAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Total") int? total,
      @JsonKey(name: "PageNumber") int? pageNumber,
      @JsonKey(name: "PageSize") int? pageSize,
      @JsonKey(name: "IsSuccess") bool? isSuccess,
      @JsonKey(name: "Data") List<AttachmentDataModel>? attachmentData});
}

/// @nodoc
class __$$RequestAttachmentModelImplCopyWithImpl<$Res>
    extends _$RequestAttachmentModelCopyWithImpl<$Res,
        _$RequestAttachmentModelImpl>
    implements _$$RequestAttachmentModelImplCopyWith<$Res> {
  __$$RequestAttachmentModelImplCopyWithImpl(
      _$RequestAttachmentModelImpl _value,
      $Res Function(_$RequestAttachmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? pageNumber = freezed,
    Object? pageSize = freezed,
    Object? isSuccess = freezed,
    Object? attachmentData = freezed,
  }) {
    return _then(_$RequestAttachmentModelImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNumber: freezed == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      attachmentData: freezed == attachmentData
          ? _value._attachmentData
          : attachmentData // ignore: cast_nullable_to_non_nullable
              as List<AttachmentDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestAttachmentModelImpl implements _RequestAttachmentModel {
  const _$RequestAttachmentModelImpl(
      {@JsonKey(name: "Total") this.total,
      @JsonKey(name: "PageNumber") this.pageNumber,
      @JsonKey(name: "PageSize") this.pageSize,
      @JsonKey(name: "IsSuccess") this.isSuccess,
      @JsonKey(name: "Data") final List<AttachmentDataModel>? attachmentData})
      : _attachmentData = attachmentData;

  factory _$RequestAttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAttachmentModelImplFromJson(json);

  @override
  @JsonKey(name: "Total")
  final int? total;
  @override
  @JsonKey(name: "PageNumber")
  final int? pageNumber;
  @override
  @JsonKey(name: "PageSize")
  final int? pageSize;
  @override
  @JsonKey(name: "IsSuccess")
  final bool? isSuccess;
  final List<AttachmentDataModel>? _attachmentData;
  @override
  @JsonKey(name: "Data")
  List<AttachmentDataModel>? get attachmentData {
    final value = _attachmentData;
    if (value == null) return null;
    if (_attachmentData is EqualUnmodifiableListView) return _attachmentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestAttachmentModel(total: $total, pageNumber: $pageNumber, pageSize: $pageSize, isSuccess: $isSuccess, attachmentData: $attachmentData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestAttachmentModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._attachmentData, _attachmentData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, pageNumber, pageSize,
      isSuccess, const DeepCollectionEquality().hash(_attachmentData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAttachmentModelImplCopyWith<_$RequestAttachmentModelImpl>
      get copyWith => __$$RequestAttachmentModelImplCopyWithImpl<
          _$RequestAttachmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _RequestAttachmentModel implements RequestAttachmentModel {
  const factory _RequestAttachmentModel(
          {@JsonKey(name: "Total") final int? total,
          @JsonKey(name: "PageNumber") final int? pageNumber,
          @JsonKey(name: "PageSize") final int? pageSize,
          @JsonKey(name: "IsSuccess") final bool? isSuccess,
          @JsonKey(name: "Data")
          final List<AttachmentDataModel>? attachmentData}) =
      _$RequestAttachmentModelImpl;

  factory _RequestAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$RequestAttachmentModelImpl.fromJson;

  @override
  @JsonKey(name: "Total")
  int? get total;
  @override
  @JsonKey(name: "PageNumber")
  int? get pageNumber;
  @override
  @JsonKey(name: "PageSize")
  int? get pageSize;
  @override
  @JsonKey(name: "IsSuccess")
  bool? get isSuccess;
  @override
  @JsonKey(name: "Data")
  List<AttachmentDataModel>? get attachmentData;
  @override
  @JsonKey(ignore: true)
  _$$RequestAttachmentModelImplCopyWith<_$RequestAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
