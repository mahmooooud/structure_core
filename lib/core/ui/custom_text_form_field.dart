import 'dart:developer';

import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/extension/widget_extension.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/utils/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/theme/color/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController? controller;
  final bool isHiddenPassword;
  final String obscuringCharacter;
  final String hint;
  final String? label;
  final InputDecoration? decoration;
  final Function(String?) onSave;
  final Function()? onTap;
  final Function()? onEditingComplete;
  final Function(String?)? onChange;
  final Function(String?)? nextFocus;
  final double? borderRadius;
  final double? height;
  final bool isRequired;
  final bool hasBorder;
  final bool? hasPadding;
  final EdgeInsets? contentPadding;
  final Function()? onTapShowHidePassword;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final GenericBloc<bool> isValid;
  TextInputAction? textInputAction;
  int maxLines;
  int minLines;
  int maxLength;
  bool? enabled;
  bool readOnly;
  bool? notLimited;
  Widget? suffixIcon;
  Color? disableColr;
  Widget? prefixIcon;
  Widget? leadingWidget;
  String? intialValue;
  ToolbarOptions? toolbarOptions;
  List<TextInputFormatter>? inputFormatters;

  CustomTextFormField(
      {Key? key,
      required this.hint,
      required this.onSave,
      required this.inputType,
      this.label,
      this.contentPadding,
      this.onChange,
      this.nextFocus,
      this.validator,
      this.controller,
      this.hasBorder = true,
      this.enabled = true,
      this.readOnly = false,
      this.obscureText = false,
      this.notLimited = false,
      this.decoration,
      this.focusNode,
      this.onEditingComplete,
      this.maxLines = 1,
      this.minLines = 1,
      this.isRequired = false,
      this.maxLength = 100,
      this.isHiddenPassword = false,
      this.obscuringCharacter = "•",
      this.inputFormatters,
      this.onTapShowHidePassword,
      this.textInputAction,
      this.suffixIcon,
      this.prefixIcon,
      this.borderRadius,
      this.height,
      this.onTap,
      this.hasPadding = true,
      this.disableColr,
      this.intialValue,
      this.autovalidateMode,
      this.toolbarOptions,
      this.leadingWidget,
      required this.isValid})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label != null,
          replacement: Gaps.empty,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomText(
                    label ?? "",
                    textStyle: context.textTheme.bodySmall!.copyWith(
                        color: context.colors.titleBlack3,
                        fontWeight: FontWeight.w500),
                  ),
                  Gaps.hGap5,
                  Visibility(
                    visible: isRequired,
                    child: CustomText(
                      "*",
                      textStyle: context.textTheme.bodySmall!.copyWith(
                        color: context.colors.red3,
                      ),
                    ),
                  )
                ],
              ),
              leadingWidget ?? Container(),
            ],
          ),
        ),
        if (label != null) Gaps.vGap5,
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: isValid,
          builder: (context, state) {
            return Container(
              child: TextFormField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                controller: controller,
                onSaved: onSave,
                onChanged: onChange,
                onEditingComplete: onEditingComplete,
                onTap: onTap,
                toolbarOptions: toolbarOptions,
                enabled: enabled,
                readOnly: readOnly,
                maxLength: notLimited! ? null : maxLength,
                validator: (p0) {
                  if (validator?.call(p0) != null) {
                    isValid.onUpdateData(false);
                  } else {
                    isValid.onUpdateData(true);
                  }
                  return validator?.call(controller?.text);
                },
                cursorColor: AppColors.of(context).borderGrey,
                showCursor: true,
                textAlign: TextAlign.start,
                keyboardType: inputType,
                maxLines: maxLines,
                focusNode: focusNode,
                inputFormatters: inputFormatters ?? [],
                textAlignVertical: TextAlignVertical.center,
                autovalidateMode:
                    autovalidateMode ?? AutovalidateMode.onUserInteraction,
                obscureText: obscureText && isHiddenPassword,
                obscuringCharacter: obscuringCharacter,
                textInputAction: textInputAction,
                onFieldSubmitted: nextFocus,
                minLines: minLines,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.of(context).black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.sp,
                    ),
                decoration: decoration ??
                    InputDecoration(
                        contentPadding: contentPadding ??
                            const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                        hintText: hint,
                        errorMaxLines: 2,
                        errorStyle: context.textTheme.displaySmall!
                            .copyWith(color: Colors.red, height: .5),
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: context.colors.titleGrey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                  locale: Locale('en', 'US'),
                                ),
                        enabledBorder: !hasBorder
                            ? InputBorder.none
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    borderRadius ?? RadiusEnum.radius_md)),
                                borderSide: BorderSide(
                                    color: disableColr ??
                                        context.colors.borderGrey,
                                    width: 1),
                              ),
                        focusedBorder: !hasBorder
                            ? InputBorder.none
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    borderRadius ?? RadiusEnum.radius_md)),
                                borderSide: BorderSide(
                                    color: disableColr ??
                                        context.colors.borderGrey,
                                    width: 1),
                              ),
                        errorBorder: !hasBorder
                            ? InputBorder.none
                            : OutlineInputBorder(
                                gapPadding: 0,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    borderRadius ?? RadiusEnum.radius_md)),
                                borderSide: BorderSide(
                                    color: const Color(0xffFDA29B), width: 1.w),
                              ),
                        focusedErrorBorder: !hasBorder
                            ? InputBorder.none
                            : OutlineInputBorder(
                                gapPadding: 0,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    borderRadius ?? RadiusEnum.radius_md)),
                                borderSide: BorderSide(
                                    color: Color(0xffF25C54), width: 1),
                              ),
                        disabledBorder: !hasBorder
                            ? InputBorder.none
                            : OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    borderRadius ?? RadiusEnum.radius_md)),
                                borderSide: BorderSide(
                                    color: disableColr ??
                                        context.colors.borderGrey,
                                    width: 1),
                              ),
                        fillColor: disableColr ?? Colors.white,
                        filled: true,
                        counterText: '',
                        prefixIcon: prefixIcon == null
                            ? null
                            : Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: prefixIcon,
                              ),
                        suffixIcon: suffixIcon == null
                            ? Padding(
                                padding: EdgeInsets.all(12),
                                child:
                                    (state.data != null && state.data == false)
                                        ? Icon(
                                            Icons.error_outline_rounded,
                                            color: context.colors.red,
                                          )
                                        : Gaps.empty,
                              )
                            : Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: suffixIcon,
                              )),
              ).press(onTap: () {
                onTap?.call();
              }),
            );
          },
        ),
      ],
    );
  }
}
