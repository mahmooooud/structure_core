import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/attachment/datasource/iblob_remote.dart';
import 'package:ndf/feature/attachment/model/upload_attachment/upload_attachment_response.dart';
import 'package:ndf/feature/attachment/model/upload_attachment_param.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IBlobRemoteSource)
class MultipartRemoteSource implements IBlobRemoteSource {
  @override
  Future<MyResult<UploadAttachmentResponse>> uploadAttachment(
      UploadAttachmentParam file) async {
    return await GetIt.I<HttpClient>().request<UploadAttachmentResponse>(
      converter: (json) => UploadAttachmentResponse.fromJson(json),
      isPostRequest: true,
      method: HttpMethod.POST,
      body: await file.toFormData(),
      url: ApiUrl.addAttachments,
      cancelToken: CancelToken(),
    );
  }
}
