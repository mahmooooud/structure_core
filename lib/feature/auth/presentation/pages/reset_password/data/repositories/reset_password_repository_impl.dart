import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/models/reset_password_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "../../domain/reset_password_repository.dart";
import '../data_sources/reset_password_datasource.dart';

@Injectable(as: ResetPasswordRepository)
class ResetPasswordRepositoryImpl extends ResetPasswordRepository {
  @override
  Future<MyResult<BaseResponseModel>> resetPassword(RestPassword model) async {
    var result =
        await GetIt.I.get<ResetPasswordDataSource>().resetPassword(model);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
