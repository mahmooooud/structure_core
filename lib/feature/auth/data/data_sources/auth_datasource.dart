import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/data/models/user_model/user_model.dart';

import '../models/user_model/login_request_model.dart';
import '../models/user_model/refresh_token_request_model.dart';

abstract class AuthDatasource {
  Future<MyResult<LoginResponseModel>> refreshToken(
      RefreshTokenRequestModel model);
  Future<MyResult<LoginResponseModel>> login(LoginRequestModel model);
  Future<MyResult<BaseResponseModel>> sendOtp(String email);
}
