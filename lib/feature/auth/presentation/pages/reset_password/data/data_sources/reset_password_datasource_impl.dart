import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/data_sources/reset_password_datasource.dart';
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/models/reset_password_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ResetPasswordDataSource)
class ResetPasswordDataSourceImpl extends ResetPasswordDataSource {
  @override
  Future<MyResult<BaseResponseModel>> resetPassword(RestPassword model) async {
    return await GetIt.I<HttpClient>().request<BaseResponseModel>(
      converter: (json) => BaseResponseModel.fromJson(json),
      method: HttpMethod.POST,
      url: ApiUrl.resetPasswordApi,
      body: model.toJson(),
      isPostRequest: true,
      cancelToken: CancelToken(),
    );
  }
}
