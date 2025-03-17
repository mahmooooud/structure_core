part of 'login_imports.dart';

class LoginController extends BaseController {
  static const routeName = "LoginRoute";
  GenericBloc<bool> showPassword = GenericBloc(true);
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController forgetPasswordEmailController = TextEditingController();
  GenericBloc<bool> rememberMe = GenericBloc(false);

  final formKey = GlobalKey<FormState>();
  final formKeyForgetPassword = GlobalKey<FormState>();
  void setBuildContext(BuildContext widgetContext) {
    context = widgetContext;
  }

  String iconPath = Res.finger_print;

  GenericBloc<bool> showBiometric = GenericBloc(false);
  bool canCheckBiometrics = false;
  init() async {
    LoginRequestModel? loginRequestModel =
        await GetIt.I<ISpHelper>().readUserBiometricData();
    bool hasBiometric = await LocalAuthService().canCheckBio();
    canCheckBiometrics = hasBiometric;
    if (loginRequestModel != null && (loginRequestModel.isEnableBio ?? false)) {
      iconPath = await LocalAuthService().getBiometricIcon();
      showBiometric.onUpdateData(hasBiometric);
    }
  }

  loginBiometric() async {
    LoginRequestModel? loginRequestModel =
        await GetIt.I<ISpHelper>().readUserBiometricData();
    bool isAuthSuccess = await LocalAuthService().biometricAuthenticate();

    if (isAuthSuccess) {
      await login(loginRequestModel?.password ?? "",
          loginRequestModel?.userName ?? "", true);
    }
  }

  Future<void> login(
      String password, String email, bool isBiometricLogin) async {
    String token = "";
    try {
      token = await GlobalNotification.messaging.getToken() ?? "";
    } catch (e) {
      token = "";
    }

    GetIt.instance
        .get<AuthRepository>()
        .login(LoginRequestModel(
            password: password, userName: email, fcmToken: token))
        .then((res) {
      res.when(
          isSuccess: (data) async {},
          isError: (error) {
            CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
          });
    });
  }

  setUserData(LoginResponseModel? data, bool isFirst) async {
    await GetIt.I<ISpHelper>().writeToken(data!.data!.token!, 'Bearer');
    await GetIt.I<ISpHelper>().writeRefreshToken(data.data!.refreshToken ?? "");
    if (isFirst == false) {
      if (rememberMe.state.data == true) {
        await GetIt.I<ISpHelper>().writeIsAnonymousToken(false);
      } else {
        await GetIt.I<ISpHelper>().writeIsAnonymousToken(true);
      }
    }
  }

  sendOTP() {
    GetIt.instance
        .get<AuthRepository>()
        .sendOtp(forgetPasswordEmailController.text)
        .then((res) {
      res.when(isSuccess: (data) async {
        Navigator.of(context).pop();
        GetIt.I<AppRouter>().push(ForgetPasswordScreenRoute(
            email: forgetPasswordEmailController.text));
      }, isError: (error) {
        CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  enableBio(bool enabled) async {
    await GetIt.I<ISpHelper>().writeUserBiometricData(LoginRequestModel(
        userName: emailController.text,
        password: passwordController.text,
        isEnableBio: enabled));
  }

  showEnableBiometricDialog() async {
    LoginRequestModel? loginRequestModel =
        await GetIt.I<ISpHelper>().readUserBiometricData();
    if (showBiometric.state.data == false && loginRequestModel == null) {
      await customBottomSheet(
        context: context,
        isDismissible: false,
        bottomSheetBody: EnableBioDialog(controller: this),
      );
    } else if (emailController.text != loginRequestModel?.userName) {
      await GetIt.I<ISpHelper>().deleteUserBiometricData();
      await customBottomSheet(
        isDismissible: false,
        context: context,
        bottomSheetBody: EnableBioDialog(controller: this),
      );
    }
  }
}
