// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadAttachmentModel _$UploadAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _UploadAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$UploadAttachmentModel {
  @JsonKey(name: 'Id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'UniqueId')
  String? get uniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileName')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileDownloadName')
  String? get fileDownloadName => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileType')
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: 'FileSize')
  int? get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'ContentType')
  String? get contentType => throw _privateConstructorUsedError;

  /// Serializes this UploadAttachmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadAttachmentModelCopyWith<UploadAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadAttachmentModelCopyWith<$Res> {
  factory $UploadAttachmentModelCopyWith(UploadAttachmentModel value,
          $Res Function(UploadAttachmentModel) then) =
      _$UploadAttachmentModelCopyWithImpl<$Res, UploadAttachmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'UniqueId') String? uniqueId,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'FileDownloadName') String? fileDownloadName,
      @JsonKey(name: 'FileType') String? fileType,
      @JsonKey(name: 'FileSize') int? fileSize,
      @JsonKey(name: 'ContentType') String? contentType});
}

/// @nodoc
class _$UploadAttachmentModelCopyWithImpl<$Res,
        $Val extends UploadAttachmentModel>
    implements $UploadAttachmentModelCopyWith<$Res> {
  _$UploadAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uniqueId = freezed,
    Object? fileName = freezed,
    Object? fileDownloadName = freezed,
    Object? fileType = freezed,
    Object? fileSize = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueId: freezed == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileDownloadName: freezed == fileDownloadName
          ? _value.fileDownloadName
          : fileDownloadName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadAttachmentModelImplCopyWith<$Res>
    implements $UploadAttachmentModelCopyWith<$Res> {
  factory _$$UploadAttachmentModelImplCopyWith(
          _$UploadAttachmentModelImpl value,
          $Res Function(_$UploadAttachmentModelImpl) then) =
      __$$UploadAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') int? id,
      @JsonKey(name: 'UniqueId') String? uniqueId,
      @JsonKey(name: 'FileName') String? fileName,
      @JsonKey(name: 'FileDownloadName') String? fileDownloadName,
      @JsonKey(name: 'FileType') String? fileType,
      @JsonKey(name: 'FileSize') int? fileSize,
      @JsonKey(name: 'ContentType') String? contentType});
}

/// @nodoc
class __$$UploadAttachmentModelImplCopyWithImpl<$Res>
    extends _$UploadAttachmentModelCopyWithImpl<$Res,
        _$UploadAttachmentModelImpl>
    implements _$$UploadAttachmentModelImplCopyWith<$Res> {
  __$$UploadAttachmentModelImplCopyWithImpl(_$UploadAttachmentModelImpl _value,
      $Res Function(_$UploadAttachmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uniqueId = freezed,
    Object? fileName = freezed,
    Object? fileDownloadName = freezed,
    Object? fileType = freezed,
    Object? fileSize = freezed,
    Object? contentType = freezed,
  }) {
    return _then(_$UploadAttachmentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uniqueId: freezed == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileDownloadName: freezed == fileDownloadName
          ? _value.fileDownloadName
          : fileDownloadName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadAttachmentModelImpl implements _UploadAttachmentModel {
  const _$UploadAttachmentModelImpl(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'UniqueId') this.uniqueId,
      @JsonKey(name: 'FileName') this.fileName,
      @JsonKey(name: 'FileDownloadName') this.fileDownloadName,
      @JsonKey(name: 'FileType') this.fileType,
      @JsonKey(name: 'FileSize') this.fileSize,
      @JsonKey(name: 'ContentType') this.contentType});

  factory _$UploadAttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadAttachmentModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int? id;
  @override
  @JsonKey(name: 'UniqueId')
  final String? uniqueId;
  @override
  @JsonKey(name: 'FileName')
  final String? fileName;
  @override
  @JsonKey(name: 'FileDownloadName')
  final String? fileDownloadName;
  @override
  @JsonKey(name: 'FileType')
  final String? fileType;
  @override
  @JsonKey(name: 'FileSize')
  final int? fileSize;
  @override
  @JsonKey(name: 'ContentType')
  final String? contentType;

  @override
  String toString() {
    return 'UploadAttachmentModel(id: $id, uniqueId: $uniqueId, fileName: $fileName, fileDownloadName: $fileDownloadName, fileType: $fileType, fileSize: $fileSize, contentType: $contentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadAttachmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileDownloadName, fileDownloadName) ||
                other.fileDownloadName == fileDownloadName) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uniqueId, fileName,
      fileDownloadName, fileType, fileSize, contentType);

  /// Create a copy of UploadAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadAttachmentModelImplCopyWith<_$UploadAttachmentModelImpl>
      get copyWith => __$$UploadAttachmentModelImplCopyWithImpl<
          _$UploadAttachmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _UploadAttachmentModel implements UploadAttachmentModel {
  const factory _UploadAttachmentModel(
          {@JsonKey(name: 'Id') final int? id,
          @JsonKey(name: 'UniqueId') final String? uniqueId,
          @JsonKey(name: 'FileName') final String? fileName,
          @JsonKey(name: 'FileDownloadName') final String? fileDownloadName,
          @JsonKey(name: 'FileType') final String? fileType,
          @JsonKey(name: 'FileSize') final int? fileSize,
          @JsonKey(name: 'ContentType') final String? contentType}) =
      _$UploadAttachmentModelImpl;

  factory _UploadAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$UploadAttachmentModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  int? get id;
  @override
  @JsonKey(name: 'UniqueId')
  String? get uniqueId;
  @override
  @JsonKey(name: 'FileName')
  String? get fileName;
  @override
  @JsonKey(name: 'FileDownloadName')
  String? get fileDownloadName;
  @override
  @JsonKey(name: 'FileType')
  String? get fileType;
  @override
  @JsonKey(name: 'FileSize')
  int? get fileSize;
  @override
  @JsonKey(name: 'ContentType')
  String? get contentType;

  /// Create a copy of UploadAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadAttachmentModelImplCopyWith<_$UploadAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
