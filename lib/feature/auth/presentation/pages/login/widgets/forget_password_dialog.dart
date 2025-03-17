part of 'package:ndf/feature/auth/presentation/pages/login/login_imports.dart';

class ForgetPasswordDialog extends StatelessWidget {
  const ForgetPasswordDialog({
    super.key,
    required this.controller,
  });
  final LoginController controller;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKeyForgetPassword,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DialogRowTitle(
              title: Translate.s.forget_password,
            ),
            Gaps.vGap10,
            CustomText(Translate.s.enter_email_to_reset_password,
                maxLines: 5,
                textStyle: context.textTheme.bodySmall!.copyWith(
                  color: context.colors.titleGrey,
                )),
            Gaps.vGap10,
            CustomTextFormField(
              isValid: GenericBloc(),
              hint: Translate.s.email,
              onSave: (String? v) {},
              label: Translate.s.email,
              inputType: TextInputType.emailAddress,
              validator: (text) {
                return (text ?? '').validateEmail();
              },
              controller: controller.forgetPasswordEmailController,
              prefixIcon: SvgAssets.getWidget(Res.email,
                  width: 15, height: 15, fit: BoxFit.contain),
            ),
            Gaps.vGap10,
            CustomButton(
              onPressed: () {
                if (controller.formKeyForgetPassword.currentState!.validate()) {
                  controller.sendOTP();
                }
              },
              child: CustomText(
                Translate.s.send_otp,
                textStyle: context.textTheme.bodyMedium!.copyWith(
                  color: context.colors.white,
                ),
              ),
            ),
            Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
