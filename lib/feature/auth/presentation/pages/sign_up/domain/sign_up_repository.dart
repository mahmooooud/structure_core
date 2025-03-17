import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/sign_up/data/model/add_customer_model.dart';

abstract class SignUpRepository {
  Future<MyResult<BaseResponseModel>> addCustomer(AddCustomerModel model);
}
