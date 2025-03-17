import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/ui/custom_text_form_field.dart';

class CustomTextFieldContainer extends StatelessWidget {
  final CustomTextFormField? textFieldWidget;

  const CustomTextFieldContainer(this.textFieldWidget, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
      margin: const EdgeInsets.only(top: 10),
      padding: EdgeInsets.zero,
      child: textFieldWidget,
    );
  }
}
