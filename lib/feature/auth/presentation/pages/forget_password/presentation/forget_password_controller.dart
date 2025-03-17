part of "forget_password_imports.dart";

class ForgetPasswordController extends BaseController {
  static const routeName = "ForgetPasswordScreenRoute";

  ForgetPasswordController();
  final GenericBloc<int> timerBloc = GenericBloc(30);
  final GenericBloc<bool> isDisabled = GenericBloc(true);
  final TextEditingController pinCodeController = TextEditingController();
  String email = "";
  @override
  void dispose() {}

  @override
  void setBuildContext(BuildContext widgetContext) {
    context = widgetContext;
  }

  resetCounter() {
    timerBloc.onUpdateData(30);
    sendOTP();
    countDown();
  }

  countDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if ((timerBloc.state.data ?? 0) > 0) {
        timerBloc.onUpdateData((timerBloc.state.data ?? 0) - 1);
      } else {
        timer.cancel();
      }
    });
  }

  sendOTP() {
    GetIt.instance.get<AuthRepository>().sendOtp(email).then((res) {
      res.when(isSuccess: (data) async {
        CustomToast.showSnakeBar(Translate.s.new_otp_sended_to_your_email,
            type: ToastType.success);
      }, isError: (error) {
        CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
      });
    });
  }

  checkOtp() async {
    GetIt.instance
        .get<ForgetPasswordRepository>()
        .checkOtp(email, pinCodeController.text)
        .then((res) {
      res.when(isSuccess: (data) async {
        if (data == "Valid") {
          // CustomToast.showSnakeBar("", type: ToastType.success);
          GetIt.I<AppRouter>().replace(ResetPasswordScreenRoute(
              email: email, otp: pinCodeController.text));
        } else {
          CustomToast.showSnakeBar(Translate.s.invalid_otp, type: ToastType.error);
        }
      }, isError: (error) {
        CustomToast.showSnakeBar(error.toString(), type: ToastType.error);
        // Handle error
      });
    });
  }
}
