import 'package:ndf/core/model/base_model.dart';
import 'package:ndf/core/result/result.dart';

abstract class ForgetPasswordDataSource {
  Future<MyResult<String>> checkOtp(String email, String otp);
}
