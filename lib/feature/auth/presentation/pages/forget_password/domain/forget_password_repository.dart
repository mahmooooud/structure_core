import 'package:ndf/core/result/result.dart';

abstract class ForgetPasswordRepository {
  Future<MyResult<String>> checkOtp(String email, String otp);
}
