import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart';
import 'package:ndf/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BlobAttachmentDatasource)
class BlobAttachmentDatasourceImpl extends BlobAttachmentDatasource {
  @override
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(
      List<dynamic> ids) async {
    print("ids.join() ${ids.join()}");
    return await GetIt.I<HttpClient>().request<RequestAttachmentModel>(
      converter: (json) => RequestAttachmentModel.fromJson(json),
      method: HttpMethod.GET,
      url: ApiUrl.getAttachmentsUrl(ids.join()),
      cancelToken: CancelToken(),
    );
  }

  @override
  Future<MyResult<dynamic>> getPhoto(String imageId, String savePath) async {
    return await GetIt.I<HttpClient>().download(
      url: ApiUrl.getAttachmentsUrl(imageId),
      cancelToken: CancelToken(),
      savePath: savePath,
    );
  }
}
