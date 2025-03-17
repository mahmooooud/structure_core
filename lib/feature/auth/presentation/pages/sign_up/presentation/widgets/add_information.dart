part of 'package:ndf/feature/auth/presentation/pages/sign_up/presentation/sign_up_imports.dart';

class AddInformationStep extends StatelessWidget {
  const AddInformationStep({
    super.key,
    required this.controller,
  });

  final SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          isRequired: true,
          maxLength: 10,
          isValid: GenericBloc(),
          hint: Translate.s.start_with_1_or_2,
          onSave: (String? v) {},
          label: Translate.s.id_iqama,
          inputFormatters: [],
          inputType: TextInputType.number,
          validator: (text) {
            return (text ?? '').validateNationalId();
          },
          controller: controller.idIqamaaController,
          prefixIcon: SvgAssets.getWidget(Res.id_iqama,
              width: 15, height: 15, fit: BoxFit.contain),
        ),
        Gaps.vGap20,
        CustomTextFormField(
          isRequired: true,
          isValid: GenericBloc(),
          hint: Translate.s.first_last_name,
          onSave: (String? v) {},
          label: Translate.s.full_name,
          inputType: TextInputType.text,
          validator: (text) {
            return (text ?? '').validateName();
          },
          controller: controller.fullNameController,
          prefixIcon: SvgAssets.getWidget(Res.man,
              width: 15, height: 15, fit: BoxFit.contain),
        ),
        Gaps.vGap20,
        // BlocBuilder<GenericBloc<LookupsDataModel>,
        //         GenericState<LookupsDataModel>>(
        //     bloc: controller.subscriptionType,
        //     builder: (context, state) {
        //       return CustomTextFormField(
        //         isValid: GenericBloc(),
        //         hint: Translate.s.select_subscription_type,
        //         onSave: (text) {},
        //         controller: TextEditingController(
        //             text: state.data?.title?.toString() ?? ""),
        //         inputType: TextInputType.text,
        //         label: Translate.s.subscription_type,
        //         prefixIcon: SvgAssets.getWidget(Res.sub,
        //             width: 15, height: 15, fit: BoxFit.contain),
        //         suffixIcon: Icon(
        //           Icons.keyboard_arrow_down_sharp,
        //           color: context.colors.black,
        //         ),
        //         enabled: false,
        //         onTap: () {},
        //       );
        //     }),
        // Gaps.vGap20,
        CustomTextFormField(
          isRequired: true,
          isValid: GenericBloc(),
          hint: Translate.s.email,
          onSave: (String? v) {},
          label: Translate.s.email,
          inputType: TextInputType.emailAddress,
          validator: (text) {
            return (text ?? '').validateEmail();
          },
          controller: controller.emailController,
          prefixIcon: SvgAssets.getWidget(Res.email, fit: BoxFit.contain),
        ),
        Gaps.vGap20,
        CustomTextFormField(
          isRequired: true,
          isValid: GenericBloc(),
          hint: controller.hintText,
          onSave: (String? v) {},
          label: Translate.s.phone_number,
          inputType: TextInputType.number,
          maxLength: 10,
          validator: (text) {
            return (text ?? '').validatePhone();
          },
          controller: controller.phoneController,
          prefixIcon: SvgAssets.getWidget(Res.phone,
              width: 15, height: 15, fit: BoxFit.contain),
        ),
        Gaps.vGap20,
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.showPassword,
            builder: (context, state) {
              return CustomTextFormField(
                isRequired: true,
                isValid: GenericBloc(),
                hint: "********",
                label: Translate.s.password,
                controller: controller.passwordController,
                onSave: (String? v) {},
                inputType: TextInputType.visiblePassword,
                onChange: (text) {
                  if (text?.isEmpty ?? false) {
                    controller.passwordHasDataBloc.onUpdateData(false);
                  } else {
                    controller.passwordHasDataBloc.onUpdateData(true);
                  }
                  checkPasswordHasNumber(text ?? "");
                  controller.checkPasswordValidation(text ?? "");
                },
                validator: (text) {
                  return (text ?? '')
                      .validateEmpty(message: Translate.s.password_validation);
                },
                isHiddenPassword: true,
                obscureText: state.data ?? false,
                prefixIcon: SvgAssets.getWidget(Res.password,
                    width: 15, height: 15, fit: BoxFit.contain),
                suffixIcon: SvgAssets.getWidget(
                        state.data != true ? Res.eye_open : Res.eye,
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain)
                    .press(onTap: () {
                  controller.showPassword.onUpdateData(!(state.data ?? false));
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
        Gaps.vGap20,
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.agreeTerms,
          builder: (context, state) {
            return FormField(validator: (p0) {
              if (state.data == true) {
                return null;
              } else {
                return Translate.s.fillField;
              }
            }, builder: (formFieldState) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    state.data ?? false
                        ? Icons.check_box_outlined
                        : Icons.check_box_outline_blank_rounded,
                    color: context.colors.primary,
                  ),
                  Gaps.hGap4,
                  Expanded(
                    child: CustomText(
                      Translate.s
                          .i_agree_to_the_terms_and_conditions_of_the_application,
                      textStyle: context.textTheme.bodySmall!.copyWith(
                          color: formFieldState.errorText != null
                              ? context.colors.red
                              : context.colors.titleBlack,
                          fontWeight: FontWeight.w500),
                    ).press(
                      onTap: () {
                        ShowDialog().showElasticDialog(
                          context: context,
                          builder: TermsDialog(),
                        );
                      },
                    ),
                  )
                ],
              ).press(onTap: () {
                controller.agreeTerms.onUpdateData(!(state.data ?? false));
              });
            });
          },
        ),
      ],
    );
  }
}
