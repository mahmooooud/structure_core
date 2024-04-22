import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/theme/app_theme.dart';
import 'package:structure_core/core/theme/color/app_colors.dart';
import 'package:structure_core/core/ui/custom_text.dart';

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
  final Function(String?)? onChange;
  final Function(String?)? nextFocus;
  final double? borderRadius;
  final double? height;
  final bool? hasPadding;
  final Function()? onTapShowHidePassword;
  final Function()? onEditingComplete;
  final FocusNode? focusNode;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  TextInputAction? textInputAction;
  int maxLines;
  int maxLength;
  bool? enabled;
  Widget? suffixIcon;
  Color? disableColr;
  Widget? prefixIcon;
  String? intialValue;
  ToolbarOptions? toolbarOptions;
  List<TextInputFormatter>? inputFormatters;

  CustomTextFormField(
      {Key? key,
      required this.hint,
      required this.onSave,
      required this.inputType,
      this.label,
      this.textAlign,
      this.textDirection,
      this.onChange,
      this.nextFocus,
      this.validator,
      this.controller,
      this.onEditingComplete,
      this.enabled = true,
      this.obscureText = false,
      this.decoration,
      this.focusNode,
      this.maxLines = 1,
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
      this.toolbarOptions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(hasPadding! ? 4 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(label != null)
            CustomText(
              label ?? "",
              textStyle: context.textTheme.subtitle2!.copyWith(
                color: context.colors.textGrey
              ),
            ),
          if(label != null)
            Gaps.vGap5,
            TextFormField(
            controller: controller,
            onSaved: onSave,
            onChanged: onChange,
            onTap: onTap,
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            textDirection: textDirection,
            textAlign: textAlign ?? TextAlign.start,
            onEditingComplete: onEditingComplete,
            toolbarOptions: toolbarOptions,
            enabled: enabled,
            maxLength: maxLength,
            validator: validator,
            cursorColor: AppColors.of(context).darkGrey,
            showCursor: true,
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
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: AppColors.of(context).black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                ),
            decoration: decoration ??
                InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    hintText: hint,
                    errorMaxLines: 10,
                    errorStyle:
                        context.textTheme.bodySmall!.copyWith(color: Colors.red),
                    hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: context.colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 14.sp,
                        ),
                    // labelText: label,
                    // labelStyle: context.textTheme.bodyText1!.copyWith(
                    //     color: context.colors.grey,
                    //     fontWeight: FontWeight.w500,
                    //     fontFamily: AppTheme.fontFamily,
                    //     fontSize: 16.sp),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      borderSide: const BorderSide(
                          color: const Color(0xFFD2D2D7), width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      borderSide:
                          const BorderSide(color: Color(0xFFD2D2D7), width: 1),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      borderSide:
                          BorderSide(color: const Color(0xffF25C54), width: 1.w),
                    ),
                    focusedErrorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                      borderSide: BorderSide(color: Color(0xffF25C54), width: 1),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      borderSide: const BorderSide(
                          color: const Color(0xFFD2D2D7), width: 1),
                    ),
                    fillColor: disableColr ?? Colors.white,
                    filled: true,
                    counterText: '',
                    suffixIcon: suffixIcon),
          ),
        ],
      ),
    );
  }
}
