import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../core/services/file_service.dart';

class UploadAttachmentParam{
  final List<File?> files;
  final String fileName;

  UploadAttachmentParam(this.files)
      : fileName = files.first!.path.split('/').last;

  Future<FormData> toFormData([String? formDateKey]) async {
    List<MultipartFile> multipartList = [];

    for(var element in files){
      log("getMimeTypeFromPath ${GetIt.I<FileService>().getMimeTypeFromPath(element?.path ?? '')}");
      multipartList.add(
          await MultipartFile.fromFile(
              element!.path,
              filename: element.path.split('/').last,
              contentType: GetIt.I<FileService>().getMimeTypeFromPath(element.path))
      );
    }
    FormData formData = FormData.fromMap({
     "Files" : [
      ...multipartList
      ],
    });
    return formData;
  }
}