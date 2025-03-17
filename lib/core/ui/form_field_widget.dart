import 'package:ndf/core/common/resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    this.validator,
    required this.child,
    this.paddig,
    this.errorTextColor = Colors.red,
  });

  final String? Function(Object?)? validator;
  final Widget child;
  final EdgeInsets? paddig;
  final Color? errorTextColor;
  @override
  Widget build(BuildContext context) {
    return FormField(
        validator: validator,
        builder: (formFieldState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              child,
              if (formFieldState.errorText != null)
                Padding(
                  padding: paddig ??
                      EdgeInsets.symmetric(vertical: 0.h, horizontal: 28.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.error,
                        color: context.colors.red,
                      ),
                      Text(
                        formFieldState.errorText ?? "",
                        style: context.textTheme.bodySmall!
                            .copyWith(color: errorTextColor),
                      ),
                    ],
                  ),
                ),
            ],
          );
        });
  }
}
