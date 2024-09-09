import 'package:json_annotation/json_annotation.dart';
import 'package:structure_core/core/constants/enums/file_type_enum.dart';

enum MimeTypeEnum{
  /// image mimeType

  @JsonValue('image/png')
  png('image/png'),

  @JsonValue('application/octet-stream')
  jpgStream('image/jpg'),

  @JsonValue('image/jpg')
  jpg('image/jpg'),

  @JsonValue('image/jpeg')
  jpeg('image/jpeg'),

  @JsonValue('image/gif')
  gif('image/gif'),

  @JsonValue('image/tiff')
  tiff('image/tiff'),

  @JsonValue('image/svg+xml')
  svg('image/svg+xml'),

  @JsonValue('image/vnd.microsoft.icon')
  ico('image/vnd.microsoft.icon'),
  /// video mimeType

  @JsonValue('video/ogg')
  ogg('video/ogg'),

  @JsonValue('video/webm')
  webm('video/webm'),
  @JsonValue('video/x-flv')
  flv('video/x-flv'),
  @JsonValue('video/mp4')
  mp4('video/mp4'),
  @JsonValue('video/3gpp')
  video3gp('video/3gpp'),
  @JsonValue('video/quicktime')
  mov('video/quicktime'),
  @JsonValue('video/x-msvideo')
  avi('video/x-msvideo'),
  @JsonValue('video/x-ms-wmv')
  wmv('video/x-ms-wmv'),
  @JsonValue('video/mpeg')
  mpeg('video/mpeg'),

  // file mimeType


  @JsonValue('application/msword')
  doc('application/msword'),
  @JsonValue('application/vnd.openxmlformats-officedocument.wordprocessingml.document')

  docx('application/vnd.openxmlformats-officedocument.wordprocessingml.document'),
  @JsonValue('application/pdf')
  pdf('application/pdf'),

  @JsonValue('application/vnd.ms-powerpoint')
  ppt('application/vnd.ms-powerpoint'),

  @JsonValue('application/vnd.openxmlformats-officedocument.presentationml.presentation')
  pptx('application/vnd.openxmlformats-officedocument.presentationml.presentation'),

  @JsonValue('application/vnd.ms-excel')
  xls('application/vnd.ms-excel'),

  @JsonValue('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet')
  xlsx('application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),

  @JsonValue('application/xml')
  xml('application/xml'),

  @JsonValue('text/xml')
  textXml('text/xml'),

  @JsonValue('text/plain')
  text('text/plain'),

  @JsonValue('application/vnd.rar')
  rar('application/vnd.rar'),

  @JsonValue('application/zip')
  zip('application/zip'),

  @JsonValue('application/x-7z-compressed')
  x7z('application/x-7z-compressed'),

  @JsonValue('application/gzip')
  gz('application/gzip'),

  @JsonValue('font/otf')
  font('font/otf'),

  other("*/*");



  bool _isImage() {
    switch (this){
      case MimeTypeEnum.png:
      case MimeTypeEnum.jpg:
      case MimeTypeEnum.jpgStream:
      case MimeTypeEnum.jpeg:
      case MimeTypeEnum.gif:
      case MimeTypeEnum.tiff:
      case MimeTypeEnum.svg:
      case MimeTypeEnum.ico:
        return true;
      default:
        return false;
    }
  }

  bool _isVideo() {
    switch (this){
      case MimeTypeEnum.ogg:
      case MimeTypeEnum.webm:
      case MimeTypeEnum.flv:
      case MimeTypeEnum.mp4:
      case MimeTypeEnum.video3gp:
      case MimeTypeEnum.mov:
      case MimeTypeEnum.avi:
      case MimeTypeEnum.wmv:
      case MimeTypeEnum.mpeg:
        return true;
      default:
        return false;
    }
  }


  FileTypeEnum getFileType(){
    if(_isImage()) {
      return FileTypeEnum.image;
    } else if(_isVideo()) {
      return FileTypeEnum.video;
    } else{
      return FileTypeEnum.file;
    }
  }

  final String mediaType;
  const MimeTypeEnum(this.mediaType);

}
