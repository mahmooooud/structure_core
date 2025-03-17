part of 'package:ndf/feature/auth/presentation/pages/forget_password/presentation/forget_password_imports.dart';

class VerifyButton extends StatelessWidget {
  final VoidCallback onVerify;

  const VerifyButton({
    super.key,
    required this.onVerify,
    required this.isDisabled,
  });
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: double.infinity,
      isEnable: !isDisabled,
      height: 50,
      onPressed: onVerify,
      child: CustomText(
        Translate.s.verify,
        textStyle: context.textTheme.bodyMedium!.copyWith(
          color: isDisabled ? context.colors.titleGrey : context.colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
