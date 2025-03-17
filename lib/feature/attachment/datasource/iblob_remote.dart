import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/attachment/model/upload_attachment/upload_attachment_response.dart';
import 'package:ndf/feature/attachment/model/upload_attachment_param.dart';

abstract class IBlobRemoteSource {
  Future<MyResult<UploadAttachmentResponse>> uploadAttachment(
      UploadAttachmentParam file);
}
