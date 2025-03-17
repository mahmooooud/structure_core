import 'package:ndf/core/model/base_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/data/data_sources/auth_datasource.dart';
import 'package:ndf/feature/auth/data/models/user_model/refresh_token_request_model.dart';
import 'package:ndf/feature/auth/domain/repositories/auth_repository.dart';
import '../models/user_model/login_request_model.dart';
import '../models/user_model/user_model.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<MyResult<LoginResponseModel>> refreshToken(
      RefreshTokenRequestModel model) async {
    var result = await GetIt.I.get<AuthDatasource>().refreshToken(model);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }

  @override
  Future<MyResult<LoginResponseModel>> login(LoginRequestModel model) async {
    var result = await GetIt.I.get<AuthDatasource>().login(model);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }

  @override
  Future<MyResult<BaseResponseModel>> sendOtp(String email) async {
    var result = await GetIt.I.get<AuthDatasource>().sendOtp(email);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
