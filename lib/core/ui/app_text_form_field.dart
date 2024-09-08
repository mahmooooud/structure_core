import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:structure_core/core/common/custom_input_decoration.dart';
import 'package:structure_core/core/common/resource.dart';

class AppTextFormField extends StatelessWidget {
  final GlobalKey<FormFieldState<String>>? formKey;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefIcon;
  final Color? fillColor;
  final bool obscureText;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;
  final EdgeInsetsGeometry? contentPadding;
  final bool autofocus;
  final int? maxlines;
  final int? maxLength;
  final BorderRadius? borderRadius;
  final Color? focsColor;
  final Color? enableColor;

  const AppTextFormField({
    Key? key,
    this.formKey,
    this.controller,
    this.autofocus = false,
    this.textInputAction,
    this.keyboardType,
    this.fillColor,
    this.onChanged,
    this.onFieldSubmitted,
    this.validator,
    this.focusNode,
    this.labelText,
    this.suffixIcon,
    this.prefIcon,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.inputFormatters,
    this.hintText,
    this.autofillHints,
    this.contentPadding,
    this.maxlines = 1,
    this.borderRadius,
    this.enableColor,
    this.focsColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (enabled) {
      return setFormFiledView(context);
    }
    return AbsorbPointer(
      absorbing: true,
      child: setFormFiledView(context),
    );
  }

  Widget setFormFiledView(BuildContext context) {
    return TextFormField(
      key: formKey,
      controller: controller,
      autofocus: autofocus,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      focusNode: focusNode,
      autofillHints: autofillHints,
      maxLines: maxlines,
      maxLength: maxLength,
      enabled: enabled,
      enableSuggestions: true,
      toolbarOptions: ToolbarOptions(
        copy: true,
        cut: true,
        paste: true,
        selectAll: true,
      ),
      cursorColor: context.colors.primary,
      style: TextStyle(
          color: context.colors.primary,
          fontSize: context.textTheme.headline6!.fontSize),
      decoration: CustomInputDecoration(
        hint: hintText,
        enableColor: enableColor,
        focsColor: focsColor ?? context.colors.primary,
        customFillColor: fillColor,
        padding: contentPadding,
        labelTxt: labelText,
        sufIcon: suffixIcon,
        prefIcon: prefIcon,
        borderRadius: borderRadius,
        context: context,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
    );
  }
}
