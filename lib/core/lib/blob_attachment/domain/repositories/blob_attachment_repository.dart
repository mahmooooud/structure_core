import 'dart:io';

import 'package:ndf/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:ndf/core/result/result.dart';

abstract class BlobAttachmentRepository {
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(
      List<dynamic> ids);
  Future<MyResult<dynamic>> getPhoto(String imageId, String savePath);
}
