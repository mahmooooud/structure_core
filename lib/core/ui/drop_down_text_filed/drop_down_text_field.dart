import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/custom_input_decoration.dart';
import 'package:structure_core/core/common/extension/context.dart';
import 'package:structure_core/core/localization/translate.dart';

import 'custom_dropDown/CustomDropDown.dart';

class DropdownTextField<T> extends StatelessWidget {
  final dynamic data;
  final GlobalKey? dropKey;
  final String? label;
  final String? hint;
  final String? searchHint;
  final T? selectedItem;
  final Widget? prefixIcon;
  final bool showSelectedItem;
  final EdgeInsets? margin;
  final double? fontSize;
  final double? labelSize;
  final double? textSize;
  final String Function(T item) itemAsString;
  final String? Function(dynamic) validate;
  final ValueChanged<T?>? onChange;
  final Future<List<T>> Function(String text)? onFind;
  final EdgeInsets? arrowBtnPadding;
  final EdgeInsets? clearBtnPadding;
  final EdgeInsets? contentPadding;
  final bool useName;
  final Color? enableColor;
  final Color? fillColor;
  final Color? hintColor;
  final Color? buttonsColor;
  final BorderRadius? radius;

  const DropdownTextField(
      {Key? key,
      this.label,
      this.hint,
      this.margin,
      required this.validate,
      this.contentPadding,
      this.prefixIcon,
      this.clearBtnPadding,
      this.arrowBtnPadding,
      this.useName = true,
      this.searchHint,
      required this.itemAsString,
      this.onChange,
      this.fontSize,
      this.textSize,
      this.labelSize,
      this.hintColor,
      this.fillColor,
      this.buttonsColor,
      this.onFind,
      this.dropKey,
      this.data,
      this.enableColor,
      this.selectedItem,
      this.radius,
      this.showSelectedItem = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      child: DropdownSearch<T>(
        key: dropKey,
        mode: Mode.BOTTOM_SHEET,
        isFilteredOnline: false,
        maxHeight: 350.h,
        label: label,
        items: data,
        onFind: onFind,
        validator: validate,
        onChanged: onChange,
        showSearchBox: true,
        showClearButton: true,
        clearButton: Padding(
          padding: clearBtnPadding ?? const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(
            Icons.clear,
            size: 20.sp,
            color: context.colors.primary,
          ),
        ),
        dropDownButton: Padding(
          padding: arrowBtnPadding ?? const EdgeInsets.symmetric(horizontal: 5),
          child: Icon(Icons.arrow_drop_down,
              size: 24.sp, color: buttonsColor ?? context.colors.primary),
        ),
        selectedItem: selectedItem,
        itemAsString: itemAsString,
        autoValidateMode: AutovalidateMode.onUserInteraction,
        showSelectedItem: showSelectedItem,
        style: context.textTheme.titleLarge!,
        searchBoxStyle: context.textTheme.titleLarge!,
        searchBoxDecoration: CustomInputDecoration(
            context: context,
            hint: searchHint ?? Translate.s.search,
            enableColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        popupTitle: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: context.colors.primary,
          ),
          child: Center(
            child: Text(
              label != null ? label! : hint!,
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
        dropdownSearchDecoration: CustomInputDecoration(
          hintColor: hintColor,
          labelTxt: label,
          hint: hint,
          customFillColor: fillColor,
          enableColor: enableColor,
          borderRadius: radius,
          prefIcon: prefixIcon,
          padding:
              contentPadding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          context: context,
        ),
      ),
    );
  }
}
