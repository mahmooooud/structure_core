import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/custom_text_form_field.dart';
import 'package:ndf/core/ui/svg_assets.dart';
import 'package:ndf/res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function()? onChangeAction;
  final Function()? onEditingComplete;
  final Function()? suffixIconAction;
  final TextInputAction? textInputAction;
  const SearchTextField({
    Key? key,
    required this.controller,
    this.suffixIcon,
    this.onChangeAction,
    this.onEditingComplete,
    this.textInputAction,
    this.suffixIconAction,
  }) : super(key: key);
  final String? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isValid: GenericBloc(),
      hint: Translate.s.search,
      onSave: (text) {},
      onChange: (value) {
        onChangeAction?.call();
      },
      onEditingComplete: onEditingComplete,
      inputType: TextInputType.text,
      controller: controller,
      label: null,
      textInputAction: textInputAction,
      prefixIcon: SvgAssets.getWidget(Res.search),
    );
  }
}
