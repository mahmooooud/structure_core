part of 'package:ndf/feature/auth/presentation/pages/forget_password/presentation/forget_password_imports.dart';

class ResendOtpTimer extends StatelessWidget {
  final GenericBloc<int> timerBloc;
  final Function onResendOtp;
  const ResendOtpTimer({
    super.key,
    required this.timerBloc,
    required this.onResendOtp,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: timerBloc,
      builder: (context, state) {
        return Column(
          children: [
            CustomText(
              '${Translate.s.resend_otp} - ${state.data}s',
              textStyle: context.textTheme.bodySmall!.copyWith(
                color: state.data == 0
                    ? context.colors.titleGrey
                    : context.colors.titleBlack,
              ),
            ),
            Gaps.vGap10,
            CustomText(
              Translate.s.resend_otp,
              textStyle: context.textTheme.bodySmall!.copyWith(
                color: state.data == 0
                    ? context.colors.primary
                    : context.colors.grey,
              ),
            ).press(
              onTap: () {
                if (state.data == 0) {
                  onResendOtp();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
