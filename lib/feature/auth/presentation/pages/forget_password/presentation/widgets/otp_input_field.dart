part of 'package:ndf/feature/auth/presentation/pages/forget_password/presentation/forget_password_imports.dart';

class OtpInputFields extends StatelessWidget {
  final ForgetPasswordController controller;

  const OtpInputFields({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      keyboardType: const TextInputType.numberWithOptions(),
      controller: controller.pinCodeController,
      autoDisposeControllers: true,
      autoFocus: true,
      length: 4,
      // separatorBuilder: (context, index) => Gaps.hGap15,
      obscureText: false,
      animationType: AnimationType.fade,
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: true,
      textStyle: context.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.w500, color: context.colors.titleBlack),
      onCompleted: (String val) {
        controller.isDisabled.onUpdateData(false);
      },
      onChanged: (String? val) {
        if (val?.length == 4) {
          controller.isDisabled.onUpdateData(false);
        } else {
          controller.isDisabled.onUpdateData(true);
        }
      },
      pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          activeBorderWidth: 1,
          inactiveBorderWidth: 1,
          disabledBorderWidth: 1,
          selectedBorderWidth: 1,
          fieldHeight: 60,
          fieldWidth: 70,
          activeColor: context.colors.primary,
          activeFillColor: context.colors.backGroundColorGrey2.withOpacity(.2),
          disabledColor: context.colors.backGroundColorGrey2.withOpacity(.2),
          inactiveColor: context.colors.backGroundColorGrey2.withOpacity(.2),
          inactiveFillColor:
              context.colors.backGroundColorGrey2.withOpacity(.9),
          selectedFillColor:
              context.colors.backGroundColorGrey2.withOpacity(.2),
          selectedColor: context.colors.primary,
          errorBorderColor: context.colors.white),
    );
  }
}
