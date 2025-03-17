import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mime/mime.dart';
import 'package:ndf/core/constants/enums/file_type_enum.dart';
import 'package:ndf/core/constants/enums/mime_type_enum.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/navigation/base_route.gr.dart';
import 'dart:io' as io;
import 'package:http_parser/http_parser.dart';
import 'package:ndf/core/ui/show_error.dart';

import '../navigation/base_route.dart';

@injectable
class FileService {
  Future<String> jsonFileReader(String path) async {
    BuildContext context = GetIt.I<AppRouter>().navigatorKey.currentContext!;
    return await DefaultAssetBundle.of(context).loadString(path);
  }

  /// Returns text representation of a provided bytes value (e.g. 1kB, 1GB)
  String sizeFormatBytesText(int size, [int fractionDigits = 2]) {
    if (size <= 0) return '0 B';
    final multiple = (log(size) / log(1024)).floor();
    return '${(size / pow(1024, multiple)).toStringAsFixed(fractionDigits)} ${[
      'B',
      'KB',
      'MB',
      'GB',
      'TB',
      'PB',
      'EB',
      'ZB',
      'YB'
    ][multiple]}';
  }

  /// Returns size representation of a provided bytes value (e.g. 1kB, 1GB)
  bool _isSizeLessThan8MG(int size, [int fractionDigits = 2]) {
    if (size <= 0) return false;
    num newSize =
        double.parse((size / pow(1024, 2)).toStringAsFixed(fractionDigits));
    if (newSize <= 8) {
      return true;
    } else {
      return false;
    }
  }

  Future<io.File?> checkFileSize(io.File file, BuildContext context) async {
    if (_isSizeLessThan8MG(await file.length())) {
      return io.File(file.path);
    } else {
      ShowError.showCustomError(Translate.s.size_more_than_8mg);
      return null;
    }
  }

  bool isSizeLessThanRequiredSize(int size, int requiredSize,
      [int fractionDigits = 2]) {
    if (size <= 0) return false;
    //  num newSize = double.parse((size / pow(1024, 2)).toStringAsFixed(fractionDigits));
    if (size <= requiredSize) {
      return true;
    } else {
      return false;
    }
  }

  MediaType? getMimeTypeFromPath(String filePath) {
    String type = lookupMimeType(filePath)!;
    MimeTypeEnum? acceptType = MimeTypeEnum.values
        .firstWhereOrNull((element) => element.mediaType == type);
    if (acceptType != null) {
      return MediaType.parse(acceptType.mediaType);
    }
    return null;
  }

  FileTypeEnum getFileType(String filePath) {
    String type = lookupMimeType(filePath)!;
    MimeTypeEnum? acceptType = MimeTypeEnum.values
        .firstWhereOrNull((element) => element.mediaType == type);
    if (acceptType == null) return MimeTypeEnum.other.getFileType();
    return acceptType.getFileType();
  }
}
