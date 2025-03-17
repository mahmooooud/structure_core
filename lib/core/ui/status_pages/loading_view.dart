import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/ui/build_shimmer_view.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return BuildShimmerView(
          height: 50.h,
          margin: EdgeInsets.only(top: 10.h),
        );
      }),
    );
  }
}
