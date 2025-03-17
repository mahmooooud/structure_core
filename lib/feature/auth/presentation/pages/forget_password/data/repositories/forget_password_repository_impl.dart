import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/forget_password/data/data_sources/forget_password_datasource.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "../../domain/forget_password_repository.dart";

@Injectable(as: ForgetPasswordRepository)
class ForgetPasswordRepositoryImpl extends ForgetPasswordRepository {
  @override
  Future<MyResult<String>> checkOtp(String email, String otp) async {
    var result =
        await GetIt.I.get<ForgetPasswordDataSource>().checkOtp(email, otp);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
