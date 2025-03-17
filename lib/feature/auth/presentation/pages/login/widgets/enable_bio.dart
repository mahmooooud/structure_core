part of 'package:ndf/feature/auth/presentation/pages/login/login_imports.dart';

class EnableBioDialog extends StatelessWidget {
  const EnableBioDialog({
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
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DialogRowTitle(
              title: Translate.s.enable_biometric_login,
            ),
            Gaps.vGap24,
            SvgAssets.getWidget(Res.biometric_icon,
                color: context.colors.primary, height: 190.h, width: 200.w),
            Gaps.vGap13,
            CustomText(
              Translate.s.biometric_authentication,
              textStyle: context.textTheme.titleLarge!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 20.sp),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap13,
            CustomText(
              Translate.s.use_fingerprint,
              textStyle: context.textTheme.bodyMedium!.copyWith(),
              textAlign: TextAlign.center,
            ),
            Gaps.vGap13,
            Gaps.vGap10,
            Visibility(
              visible: controller.canCheckBiometrics,
              replacement: Gaps.empty,
              child: CustomButton(
                onPressed: () async {
                  await controller.enableBio(true);
                  Navigator.of(context).pop();
                },
                child: CustomText(
                  Translate.s.enable_biometric_login,
                  textStyle: context.textTheme.bodyMedium!.copyWith(
                      color: context.colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Gaps.vGap10,
            CustomText(
              Translate.s.skip,
              textStyle: context.textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w400,
                color: context.colors.primary,
                decoration: TextDecoration.underline,
              ),
            ).press(onTap: () async {
              await controller.enableBio(false);

              Navigator.of(context).pop();
            }),
            Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
