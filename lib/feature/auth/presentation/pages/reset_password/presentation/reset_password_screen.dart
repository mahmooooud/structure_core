part of "reset_password_imports.dart";

@RoutePage(name: ResetPasswordController.routeName)
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen(
      {super.key, required this.email, required this.otp});
  final String email;
  final String otp;
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late ResetPasswordController controller;

  @override
  void initState() {
    controller = ResetPasswordController();
    controller.setBuildContext(context);
    controller.email = widget.email;
    controller.otp = widget.otp;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Gaps.vGap64,
                Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Res.square,
                          height: context.height * .2,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Align(
                                alignment: AlignmentDirectional.topStart,
                                child: Icon(Icons.arrow_back_ios))
                            .press(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Center(
                          child: SvgAssets.getWidget(Res.lock,
                              width: 140.w, height: 140.h),
                        ),
                        Gaps.vGap32,
                        Column(
                          children: [
                            CustomText(
                              Translate.s.reset_password,
                              textStyle: context.textTheme.titleLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            CustomText(
                              Translate.s.reset_password_msg,
                              textAlign: TextAlign.center,
                              maxLines: 4,
                              textStyle: context.textTheme.bodySmall!.copyWith(
                                color: context.colors.titleGrey,
                              ),
                            ),
                          ],
                        ),
                        Gaps.vGap20,
                      ],
                    )
                  ],
                ),
                Gaps.vGap16,
                BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: controller.showPassword,
                    builder: (context, state) {
                      return CustomTextFormField(
                        isValid: GenericBloc(),
                        hint: Translate.s.enter_new_password,
                        label: Translate.s.enter_new_password,
                        controller: controller.passwordController,
                        onSave: (String? v) {},
                        inputType: TextInputType.visiblePassword,
                        validator: (text) {
                          return (text ?? '').validateEmpty(
                              message: Translate.s.password_validation);
                        },
                        isHiddenPassword: true,
                        onChange: (text) {
                          if (text?.isEmpty ?? false) {
                            controller.passwordHasDataBloc.onUpdateData(false);
                          } else {
                            controller.passwordHasDataBloc.onUpdateData(true);
                          }
                          checkPasswordHasNumber(text ?? "");
                          controller.checkPasswordValidation(text ?? "");
                        },
                        obscureText: state.data ?? false,
                        prefixIcon: SvgAssets.getWidget(Res.password,
                            width: 15, height: 15, fit: BoxFit.contain),
                        suffixIcon: SvgAssets.getWidget(
                            state.data != true ? Res.eye_open : Res.eye,
                            width: 15,
                            height: 15,
                            fit: BoxFit.contain).press(onTap: () {
                          controller.showPassword
                              .onUpdateData(!(state.data ?? false));
                        }),
                      );
                    }),
                Gaps.vGap8,
                BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                  bloc: controller.passwordHasDataBloc,
                  builder: (context, state) {
                    return state.data == true
                        ? PasswordValidationWidget(controller: controller)
                        : Gaps.empty;
                  },
                ),
                Gaps.vGap16,
                BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                    bloc: controller.showConfirmPassword,
                    builder: (context, state) {
                      return CustomTextFormField(
                        isValid: GenericBloc(),
                        hint: Translate.s.reenter_new_password,
                        label: Translate.s.reenter_new_password,
                        controller: controller.confirmPasswordController,
                        onSave: (String? v) {},
                        inputType: TextInputType.visiblePassword,
                        validator: (text) {
                          return (text ?? '').validateEmpty(
                              message: Translate.s.password_validation);
                        },
                        isHiddenPassword: true,
                        obscureText: state.data ?? false,
                        prefixIcon: SvgAssets.getWidget(Res.password,
                            width: 15, height: 15, fit: BoxFit.contain),
                        suffixIcon: SvgAssets.getWidget(
                            state.data != true ? Res.eye_open : Res.eye,
                            width: 15,
                            height: 15,
                            fit: BoxFit.contain).press(onTap: () {
                          controller.showConfirmPassword
                              .onUpdateData(!(state.data ?? false));
                        }),
                      );
                    }),
                Gaps.vGap24,
                CustomButton(
                    child: CustomText(
                      Translate.s.reset_password,
                      textStyle: context.textTheme.bodyMedium!
                          .copyWith(color: context.colors.white),
                    ),
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        if (controller.passwordController.text !=
                            controller.confirmPasswordController.text) {
                          CustomToast.showSnakeBar(Translate.s.password_not_match,
                              type: ToastType.error);
                        } else {
                          controller.resetPassword();
                        }
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
