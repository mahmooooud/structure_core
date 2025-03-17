import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "forget_password_datasource.dart";

@Injectable(as: ForgetPasswordDataSource)
class ForgetPasswordDataSourceImpl extends ForgetPasswordDataSource {
  @override
  Future<MyResult<String>> checkOtp(String email, String otp) async {
    return await GetIt.I<HttpClient>().request<String>(
      converter: (json) => json.toString(),
      method: HttpMethod.POST,
      url: ApiUrl.checkOtpApi,
      isPostRequest: true,
      body: {"Email": email, "Key": otp},
      cancelToken: CancelToken(),
    );
  }
}
