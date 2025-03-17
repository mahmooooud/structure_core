import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';
import 'package:ndf/feature/auth/presentation/pages/reset_password/data/models/reset_password_model.dart';

abstract class ResetPasswordRepository {
  Future<MyResult<BaseResponseModel>> resetPassword(RestPassword model);
}
