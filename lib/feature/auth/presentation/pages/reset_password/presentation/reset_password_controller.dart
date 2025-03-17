part of "reset_password_imports.dart";

class ResetPasswordController extends BaseController {
  static const routeName = "ResetPasswordScreenRoute";

  ResetPasswordController();

  String email = "";
  String otp = "";
  @override
  void dispose() {}
  GenericBloc<bool> showPassword = GenericBloc(true);
  final formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  GenericBloc<bool> showConfirmPassword = GenericBloc(true);
  TextEditingController confirmPasswordController = TextEditingController();
  final GenericBloc<bool> passwordHasDataBloc = GenericBloc(false);
  final GenericBloc<bool> confirmPasswordHasDataBloc = GenericBloc(false);

  @override
  void setBuildContext(BuildContext widgetContext) {
    context = widgetContext;
  }

  checkPasswordValidation(String text) {
    if (text.isEmpty) {
      characterLengthBloc.onUpdateData(null);
      hasNumberBloc.onUpdateData(null);
      hasUppercaseBloc.onUpdateData(null);
      hasSpecialCharacterBloc.onUpdateData(null);
    } else {
      if (checkPasswordLength(text)) {
        characterLengthBloc.onUpdateData(true);
      } else {
        characterLengthBloc.onUpdateData(false);
      }
      if (checkPasswordHasNumber(text)) {
        hasNumberBloc.onUpdateData(true);
      } else {
        hasNumberBloc.onUpdateData(false);
      }
      if (checkPasswordHasSpecial(text)) {
        hasSpecialCharacterBloc.onUpdateData(true);
      } else {
        hasSpecialCharacterBloc.onUpdateData(false);
      }
      if (checkPasswordHasUppercase(text)) {
        hasUppercaseBloc.onUpdateData(true);
      } else {
        hasUppercaseBloc.onUpdateData(false);
      }
      if (checkPasswordHasLowercase(text)) {
        hasLowercaseBloc.onUpdateData(true);
      } else {
        hasLowercaseBloc.onUpdateData(false);
      }
    }
  }

  final GenericBloc<bool> characterLengthBloc = GenericBloc(false);
  final GenericBloc<bool> hasNumberBloc = GenericBloc(false);
  final GenericBloc<bool> hasUppercaseBloc = GenericBloc(false);
  final GenericBloc<bool> hasLowercaseBloc = GenericBloc(false);
  final GenericBloc<bool> hasSpecialCharacterBloc = GenericBloc(false);
  bool checkAllConditionIsValid() {
    bool valid = (characterLengthBloc.state.data ?? false) &&
        (hasNumberBloc.state.data ?? false) &&
        (hasUppercaseBloc.state.data ?? false) &&
        (hasLowercaseBloc.state.data ?? false) &&
        (hasSpecialCharacterBloc.state.data ?? false);

    return valid;
  }

  resetPassword() async {
    GetIt.instance
        .get<ResetPasswordRepository>()
        .resetPassword(RestPassword(
            email: email, newPassword: passwordController.text, key: otp))
        .then((res) {
      res.when(isSuccess: (data) async {
        await GetIt.I<ISpHelper>().deleteUserBiometricData();
        GetIt.I<AppRouter>().replace(LoginRoute());
        ShowDialog().showElasticDialog(
            context: context,
            insetPadding: EdgeInsets.symmetric(
                vertical: context.height * .31, horizontal: 40.w),
            builder: SuccessDialog(
              title: Translate.s.success_reset_password,
            ));
      }, isError: (error) {
        // Handle error
      });
    });
  }
}
