import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/data_sources/sign_up_datasource.dart';
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/model/add_customer_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "../../domain/sign_up_repository.dart";

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl extends SignUpRepository {
  @override
  Future<MyResult<BaseResponseModel>> addCustomer(
      AddCustomerModel model) async {
    var result = await GetIt.I.get<SignUpDataSource>().addCustomer(model);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
