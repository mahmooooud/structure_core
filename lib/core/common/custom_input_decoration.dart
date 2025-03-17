import 'package:flutter/material.dart';
import 'package:ndf/core/common/resource.dart';

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
        borderSide:
            BorderSide(color: enableColor ?? context.colors.primary, width: 1),
        borderRadius: borderRadius ?? BorderRadius.circular(8),
      );

  @override
  InputBorder get focusedBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      borderSide:
          BorderSide(color: focusColor ?? context.colors.primary, width: 1));

  @override
  InputBorder get errorBorder => OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: .5),
      borderRadius: borderRadius ?? BorderRadius.circular(5));

  @override
  InputBorder get focusedErrorBorder => OutlineInputBorder(
      borderRadius: borderRadius ?? BorderRadius.circular(5),
      borderSide: const BorderSide(color: Colors.red, width: 2));

  @override
  TextStyle get errorStyle => context.textTheme.bodyMedium!.copyWith(
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
  TextStyle get labelStyle => context.textTheme.bodyMedium!.copyWith(
      color: context.colors.titleGrey,
      fontSize: 14,
      fontWeight: FontWeight.w400);

  @override
  TextStyle? get floatingLabelStyle => context.textTheme.bodyMedium!.copyWith(
        color: context.colors.titleGrey,
      );

  @override
  TextStyle? get hintStyle => context.textTheme.bodyMedium!
      .copyWith(color: context.colors.titleGrey, fontSize: 14);

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
