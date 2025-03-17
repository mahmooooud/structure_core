import 'dart:io';

import 'package:ndf/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart';
import 'package:ndf/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:ndf/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart';
import 'package:ndf/core/result/result.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BlobAttachmentRepository)
class BlobAttachmentRepositoryImpl extends BlobAttachmentRepository {
  @override
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(
      List<dynamic> ids) async {
    var result =
        await GetIt.I.get<BlobAttachmentDatasource>().getRequestAttachment(ids);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }

  //
  @override
  Future<MyResult<dynamic>> getPhoto(String imageId, String savePath) async {
    var result = await GetIt.I
        .get<BlobAttachmentDatasource>()
        .getPhoto(imageId, savePath);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
