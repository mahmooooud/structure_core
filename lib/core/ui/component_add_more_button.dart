import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/localization/translate.dart';

class ComponentAddMoreButton extends StatelessWidget {
  final Function() onTap;

  const ComponentAddMoreButton({Key? key, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: ElevatedButton(
        onPressed: onTap,
        child: Row(
          children: [
            Icon(Icons.add, size: 20.sp, color: Colors.white),
            SizedBox(width: 5.sp),
            Text(
              Translate.s.addMore,
              style:
                  context.textTheme.bodyMedium?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
