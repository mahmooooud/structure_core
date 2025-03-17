part of 'package:ndf/feature/auth/presentation/pages/forget_password/presentation/forget_password_imports.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              child: SvgAssets.getWidget(Res.otp, width: 140.w, height: 140.h),
            ),
            Gaps.vGap32,
            Column(
              children: [
                CustomText(
                  Translate.s.otp_verification,
                  textStyle: context.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                CustomText(
                  Translate.s.otp_verification_msg,
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
    );
  }
}
