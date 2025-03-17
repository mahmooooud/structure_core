import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/model/add_customer_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "sign_up_datasource.dart";

@Injectable(as: SignUpDataSource)
class SignUpDataSourceImpl extends SignUpDataSource {
  @override
  Future<MyResult<BaseResponseModel>> addCustomer(
      AddCustomerModel model) async {
    return await GetIt.I<HttpClient>().request<BaseResponseModel>(
      converter: (json) => BaseResponseModel.fromJson(json),
      method: HttpMethod.POST,
      url: ApiUrl.addCustomerApi,
      body: model.toJson(),
      isPostRequest: true,
      cancelToken: CancelToken(),
    );
  }
}
