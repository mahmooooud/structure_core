import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/ui/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingTextField extends StatelessWidget {
  const LoadingTextField({
    super.key,
    required this.hint,
    this.label,
  });
  final String hint;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      isValid: GenericBloc(),
      hint: hint,
      label: label,
      controller: TextEditingController(),
      enabled: false,
      onSave: (String? v) {},
      suffixIcon: CupertinoActivityIndicator(
        color: context.colors.primary,
        radius: 10.r,
      ),
      inputType: TextInputType.name,
    );
  }
}
