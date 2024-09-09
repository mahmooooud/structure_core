import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtonWidget extends StatelessWidget {
  final Color? color;
  final Function()? onPop;

  const BackButtonWidget({Key? key, this.color, this.onPop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPop ?? () => context.router.pop(),
      child: SizedBox(
        height: 40.h,
        width: 40.w,
        child: Center(
          child: Icon(
            Icons.arrow_back,
            color: color ?? Theme.of(context).colorScheme.primary,
            size: 25,
          ),
        ),
      ),
    );
  }
}
