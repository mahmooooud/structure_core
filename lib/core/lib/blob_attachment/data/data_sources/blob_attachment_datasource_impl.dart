import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/lib/blob_attachment/data/data_sources/blob_attachment_datasource.dart';
import 'package:structure_core/core/lib/blob_attachment/data/model/request_attachment/request_attachment_model.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'package:structure_core/core/result/result.dart';


@Injectable(as: BlobAttachmentDatasource)
class BlobAttachmentDatasourceImpl extends BlobAttachmentDatasource {
  @override
  Future<MyResult<RequestAttachmentModel>> getRequestAttachment(List<int> ids) async{
    return await GetIt.I<HttpClient>().request<RequestAttachmentModel>(
      converter: (json) => RequestAttachmentModel.fromJson(json),
      method: HttpMethod.POST,
      body: {
        "Ids" : ids
      },
      //todo getAttachmentsUrl
      url: "",
      cancelToken: CancelToken(),
    );
  }

  @override
  Future<MyResult<dynamic>> getPhoto(String imageId,String savePath) async {
    return await GetIt.I<HttpClient>().download(
      // todo getUserImageUrl
      url: "",
      cancelToken: CancelToken(),
      savePath: savePath,
    );
  }

}
