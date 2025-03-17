// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttachmentDataModel _$AttachmentDataModelFromJson(Map<String, dynamic> json) {
  return _AttachmentDataModel.fromJson(json);
}

/// @nodoc
mixin _$AttachmentDataModel {
  @JsonKey(name: "Id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "UniqueId")
  String? get uniqueId => throw _privateConstructorUsedError;
  @JsonKey(name: "FileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "FileDownloadName")
  String? get fileDownloadName => throw _privateConstructorUsedError;
  @JsonKey(name: "FileType")
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: "FileSize")
  int? get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: "FilePath")
  String? get filePath => throw _privateConstructorUsedError;
  @JsonKey(name: "Path")
  String? get path => throw _privateConstructorUsedError;

  /// Serializes this AttachmentDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentDataModelCopyWith<AttachmentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentDataModelCopyWith<$Res> {
  factory $AttachmentDataModelCopyWith(
          AttachmentDataModel value, $Res Function(AttachmentDataModel) then) =
      _$AttachmentDataModelCopyWithImpl<$Res, AttachmentDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "Id") int? id,
      @JsonKey(name: "UniqueId") String? uniqueId,
      @JsonKey(name: "FileName") String? fileName,
      @JsonKey(name: "FileDownloadName") String? fileDownloadName,
      @JsonKey(name: "FileType") String? fileType,
      @JsonKey(name: "FileSize") int? fileSize,
      @JsonKey(name: "FilePath") String? filePath,
      @JsonKey(name: "Path") String? path});
}

/// @nodoc
class _$AttachmentDataModelCopyWithImpl<$Res, $Val extends AttachmentDataModel>
    implements $AttachmentDataModelCopyWith<$Res> {
  _$AttachmentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentDataModel
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
    Object? filePath = freezed,
    Object? path = freezed,
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
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentDataModelImplCopyWith<$Res>
    implements $AttachmentDataModelCopyWith<$Res> {
  factory _$$AttachmentDataModelImplCopyWith(_$AttachmentDataModelImpl value,
          $Res Function(_$AttachmentDataModelImpl) then) =
      __$$AttachmentDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Id") int? id,
      @JsonKey(name: "UniqueId") String? uniqueId,
      @JsonKey(name: "FileName") String? fileName,
      @JsonKey(name: "FileDownloadName") String? fileDownloadName,
      @JsonKey(name: "FileType") String? fileType,
      @JsonKey(name: "FileSize") int? fileSize,
      @JsonKey(name: "FilePath") String? filePath,
      @JsonKey(name: "Path") String? path});
}

/// @nodoc
class __$$AttachmentDataModelImplCopyWithImpl<$Res>
    extends _$AttachmentDataModelCopyWithImpl<$Res, _$AttachmentDataModelImpl>
    implements _$$AttachmentDataModelImplCopyWith<$Res> {
  __$$AttachmentDataModelImplCopyWithImpl(_$AttachmentDataModelImpl _value,
      $Res Function(_$AttachmentDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttachmentDataModel
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
    Object? filePath = freezed,
    Object? path = freezed,
  }) {
    return _then(_$AttachmentDataModelImpl(
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
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentDataModelImpl implements _AttachmentDataModel {
  const _$AttachmentDataModelImpl(
      {@JsonKey(name: "Id") this.id,
      @JsonKey(name: "UniqueId") this.uniqueId,
      @JsonKey(name: "FileName") this.fileName,
      @JsonKey(name: "FileDownloadName") this.fileDownloadName,
      @JsonKey(name: "FileType") this.fileType,
      @JsonKey(name: "FileSize") this.fileSize,
      @JsonKey(name: "FilePath") this.filePath,
      @JsonKey(name: "Path") this.path});

  factory _$AttachmentDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentDataModelImplFromJson(json);

  @override
  @JsonKey(name: "Id")
  final int? id;
  @override
  @JsonKey(name: "UniqueId")
  final String? uniqueId;
  @override
  @JsonKey(name: "FileName")
  final String? fileName;
  @override
  @JsonKey(name: "FileDownloadName")
  final String? fileDownloadName;
  @override
  @JsonKey(name: "FileType")
  final String? fileType;
  @override
  @JsonKey(name: "FileSize")
  final int? fileSize;
  @override
  @JsonKey(name: "FilePath")
  final String? filePath;
  @override
  @JsonKey(name: "Path")
  final String? path;

  @override
  String toString() {
    return 'AttachmentDataModel(id: $id, uniqueId: $uniqueId, fileName: $fileName, fileDownloadName: $fileDownloadName, fileType: $fileType, fileSize: $fileSize, filePath: $filePath, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentDataModelImpl &&
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
            (identical(other.filePath, filePath) ||
                other.filePath == filePath) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uniqueId, fileName,
      fileDownloadName, fileType, fileSize, filePath, path);

  /// Create a copy of AttachmentDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentDataModelImplCopyWith<_$AttachmentDataModelImpl> get copyWith =>
      __$$AttachmentDataModelImplCopyWithImpl<_$AttachmentDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentDataModelImplToJson(
      this,
    );
  }
}

abstract class _AttachmentDataModel implements AttachmentDataModel {
  const factory _AttachmentDataModel(
      {@JsonKey(name: "Id") final int? id,
      @JsonKey(name: "UniqueId") final String? uniqueId,
      @JsonKey(name: "FileName") final String? fileName,
      @JsonKey(name: "FileDownloadName") final String? fileDownloadName,
      @JsonKey(name: "FileType") final String? fileType,
      @JsonKey(name: "FileSize") final int? fileSize,
      @JsonKey(name: "FilePath") final String? filePath,
      @JsonKey(name: "Path") final String? path}) = _$AttachmentDataModelImpl;

  factory _AttachmentDataModel.fromJson(Map<String, dynamic> json) =
      _$AttachmentDataModelImpl.fromJson;

  @override
  @JsonKey(name: "Id")
  int? get id;
  @override
  @JsonKey(name: "UniqueId")
  String? get uniqueId;
  @override
  @JsonKey(name: "FileName")
  String? get fileName;
  @override
  @JsonKey(name: "FileDownloadName")
  String? get fileDownloadName;
  @override
  @JsonKey(name: "FileType")
  String? get fileType;
  @override
  @JsonKey(name: "FileSize")
  int? get fileSize;
  @override
  @JsonKey(name: "FilePath")
  String? get filePath;
  @override
  @JsonKey(name: "Path")
  String? get path;

  /// Create a copy of AttachmentDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentDataModelImplCopyWith<_$AttachmentDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
