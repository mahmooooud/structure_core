import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/net/api_url.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/data/models/user_model/refresh_token_request_model.dart';
import 'package:ndf/feature/auth/data/models/user_model/user_model.dart';
import '../models/user_model/login_request_model.dart';
import 'auth_datasource.dart';

@Injectable(as: AuthDatasource)
class AuthDatasourceImpl extends AuthDatasource {
  @override
  Future<MyResult<LoginResponseModel>> refreshToken(
      RefreshTokenRequestModel model) async {
    return await GetIt.I<HttpClient>().request<LoginResponseModel>(
      converter: (json) => LoginResponseModel.fromJson(json),
      isPostRequest: false,
      body: model.toJson(),
      method: HttpMethod.POST,
      url: ApiUrl.getRefreshTokenUrl,
      cancelToken: CancelToken(),
    );
  }

  @override
  Future<MyResult<LoginResponseModel>> login(LoginRequestModel model) async {
    return await GetIt.I<HttpClient>().request<LoginResponseModel>(
      converter: (json) => LoginResponseModel.fromJson(json),
      isPostRequest: true,
      body: model.toJson(),
      method: HttpMethod.POST,
      url: ApiUrl.loginApi,
      cancelToken: CancelToken(),
    );
  }

  @override
  Future<MyResult<BaseResponseModel>> sendOtp(String email) async {
    return await GetIt.I<HttpClient>().request<BaseResponseModel>(
      converter: (json) => BaseResponseModel.fromJson(json),
      isPostRequest: true,
      queryParameters: {"email": email},
      method: HttpMethod.GET,
      url: ApiUrl.forgetPasswordApi,
      cancelToken: CancelToken(),
    );
  }
}
