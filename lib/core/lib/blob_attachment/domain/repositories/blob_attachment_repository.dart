import 'dart:io';

import 'package:structure_core/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:structure_core/core/model/base/base_model.dart';
import 'package:structure_core/core/result/result.dart';

abstract class BlobAttachmentRepository {
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(List<int> ids);
  Future<MyResult<dynamic>> getPhoto(String imageId,String savePath);


}
