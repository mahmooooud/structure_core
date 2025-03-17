import 'dart:io';

import 'package:ndf/feature/attachment/model/upload_attachment/upload_attachment_response.dart';
import 'package:injectable/injectable.dart';

import '../../../core/result/model_to_domain_result.dart';
import '../../../core/result/result.dart';
import '../datasource/iblob_remote.dart';
import '../model/blob_model.dart';
import '../model/upload_attachment_param.dart';
import 'iblob_repository.dart';

@Injectable(as: IBlobRepository)
class BlobRepository with ModelToDomainResult implements IBlobRepository {
  final IBlobRemoteSource iBlobRemoteSource;

  BlobRepository(this.iBlobRemoteSource);

  @override
  Future<MyResult<UploadAttachmentResponse>> uploadAttachment(
      List<File?>? files) async {
    UploadAttachmentParam param = UploadAttachmentParam(files!);
    MyResult<UploadAttachmentResponse> result =
        await iBlobRemoteSource.uploadAttachment(param);
    return result;
  }
}
