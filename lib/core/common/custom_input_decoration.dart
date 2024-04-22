import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/resource.dart';

class CustomInputDecoration extends InputDecoration {
  final BuildContext context;
  final String? labelTxt;
  final String? hint;
  final Widget? prefIcon;
  final Widget? sufIcon;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final Color? enableColor;
  final Color? focsColor;
  final Color? hintColor;
  final Color? customFillColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const CustomInputDecoration(
      {required this.context,
      this.hint,
      this.labelTxt,
      this.prefIcon,
      this.sufIcon,
      this.hintColor,
      this.customFillColor,
      this.enableColor,
      this.suffixWidget,
      this.prefixWidget,
      this.focsColor,
      this.borderRadius,
      this.padding})
      : super(
          prefixIcon: prefIcon,
          suffixIcon: sufIcon,
          filled: true,
          fillColor: customFillColor,
          contentPadding: padding,
        );

  @override
  InputBorder get enabledBorder => OutlineInputBorder(
        borderSide: BorderSide(color: enableColor ?? context.colors.titleGrey, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
      );

  @override
  InputBorder get focusedBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(8.r),
      borderSide: BorderSide(color: focusColor ?? context.colors.primary, width: 1));

  @override
  InputBorder get errorBorder => OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: .5),
      borderRadius: borderRadius ?? BorderRadius.circular(5.r));

  @override
  InputBorder get focusedErrorBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(5.r),
      borderSide: const BorderSide(color: Colors.red, width: 2));

  @override
  TextStyle get errorStyle => context.textTheme.bodyText1!.copyWith(
        color: Colors.red,
      );

  @override
  String? get hintText => hint;

  @override
  Widget? get label => labelTxt == null
      ? super.label
      : Text(
          labelTxt ?? "",
          style: labelStyle,
        );

  @override
  TextStyle get labelStyle => context.textTheme.bodyText1!.copyWith(
        color: context.colors.titleGrey,
      );

  @override
  TextStyle? get floatingLabelStyle => context.textTheme.bodyText1!.copyWith(
        color: context.colors.titleGrey,
      );

  @override
  TextStyle? get hintStyle => context.textTheme.headline4!.copyWith(
        color: context.colors.titleGrey,fontSize: 17.sp
      );

  @override
  EdgeInsetsGeometry get contentPadding =>
      padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 14);

  @override
  bool get filled => true;

  @override
  Color get fillColor => customFillColor ?? Colors.transparent;

  @override
  bool get alignLabelWithHint => true;

  @override
  Widget? get suffixIcon => sufIcon;

  @override
  Widget? get prefixIcon => prefIcon;

  @override
  Widget? get suffix => suffixWidget;

  @override
  Widget? get prefix => prefixWidget;

  @override
  Color? get focusColor => focsColor;
}
