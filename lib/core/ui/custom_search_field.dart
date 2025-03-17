import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/theme/color/app_colors.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';

class CustomSearchField extends StatelessWidget {
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController? controller;
  final bool isHiddenPassword;
  final String obscuringCharacter;
  final String hint;
  final InputDecoration? decoration;
  final Function(String?) onSave;
  final Function()? onTapShowHidePassword;
  final String? Function(String?)? validator;
  int maxLines;
  Widget? suffixIcon;
  Widget? prefixIcon;
  List<TextInputFormatter>? inputFormatters;

  CustomSearchField(
      {Key? key,
      required this.hint,
      required this.onSave,
      required this.inputType,
      this.validator,
      this.controller,
      this.obscureText = false,
      this.decoration,
      this.maxLines = 1,
      this.isHiddenPassword = false,
      this.obscuringCharacter = " ",
      this.inputFormatters,
      this.onTapShowHidePassword,
      this.suffixIcon,
      this.prefixIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onSave,
      validator: validator,
      cursorColor: AppColors.of(context).grey,
      showCursor: true,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      maxLines: maxLines,
      inputFormatters: inputFormatters ?? [],
      textAlignVertical: TextAlignVertical.center,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText && isHiddenPassword,
      obscuringCharacter: obscuringCharacter,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.of(context).titleBlack,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: 'CAIRO'),
      decoration: decoration ??
          InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.of(context).iconGrey,
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              borderSide:
                  BorderSide(color: context.colors.borderGrey, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              borderSide:
                  BorderSide(color: context.colors.borderGrey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              borderSide:
                  BorderSide(color: context.colors.borderGrey, width: 1),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              borderSide:
                  BorderSide(color: context.colors.borderGrey, width: 1),
            ),
            fillColor: context.colors.grey.withOpacity(.05),
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SvgAssets.getWidget(Res.search,
                  fit: BoxFit.contain, width: 18, height: 18),
            ),
          ),
    );
  }
}
