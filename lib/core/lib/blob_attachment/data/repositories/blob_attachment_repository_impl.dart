
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart';
import 'package:structure_core/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:structure_core/core/lib/blob_attachment/domain/repositories/blob_attachment_repository.dart';
import 'package:structure_core/core/net/api_url.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'package:structure_core/core/result/result.dart';

@Injectable(as: BlobAttachmentRepository)
class BlobAttachmentRepositoryImpl extends BlobAttachmentRepository {
  @override
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(List<int> ids) async {
    var result = await GetIt.I.get<BlobAttachmentDatasource>().getRequestAttachment(ids);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }

  @override
  Future<MyResult<dynamic>> getPhoto(String imageId,String savePath) async {
    var result = await GetIt.I.get<BlobAttachmentDatasource>().getPhoto(imageId,savePath);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
