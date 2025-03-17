import 'dart:io';

import 'package:ndf/feature/attachment/model/upload_attachment/upload_attachment_response.dart';

import '../../../core/result/result.dart';

abstract class IBlobRepository {
  Future<MyResult<UploadAttachmentResponse>> uploadAttachment(
      List<File?>? files);
}
