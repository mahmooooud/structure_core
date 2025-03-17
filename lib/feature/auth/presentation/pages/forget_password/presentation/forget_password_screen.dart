part of "forget_password_imports.dart";

@RoutePage(name: ForgetPasswordController.routeName)
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key, required this.email});
  final String email;
  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late ForgetPasswordController controller;

  @override
  void initState() {
    controller = ForgetPasswordController();
    controller.setBuildContext(context);
    controller.email = widget.email;
    controller.countDown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Gaps.vGap64,
              const OtpHeader(),
              Gaps.vGap32,
              OtpInputFields(controller: controller),
              Gaps.vGap24,
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: controller.isDisabled,
                builder: (context, state) {
                  return VerifyButton(
                      isDisabled: state.data ?? true,
                      onVerify: () {
                        controller.checkOtp();
                      });
                },
              ),
              Gaps.vGap24,
              BlocBuilder<GenericBloc<int>, GenericState<int>>(
                bloc: controller.timerBloc,
                builder: (context, state) {
                  return Column(
                    children: [
                      ResendOtpTimer(
                        timerBloc: controller.timerBloc,
                        onResendOtp: () {
                          controller.resetCounter();
                        },
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
