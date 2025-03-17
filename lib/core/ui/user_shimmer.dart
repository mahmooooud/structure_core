import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/extension/context.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/shimmer/shimmer_widget.dart';

class UserShimmer extends StatelessWidget {
  const UserShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShimmerWidget(
          radius: 100,
          child: SizedBox(
            height: 50.h,
            width: 50.w,
          ),
        ),
        Gaps.hGap5,
        Expanded(
          child: ShimmerWidget(
            child: SizedBox(
              height: 10.h,
              width: 130.w,
            ),
          ),
        ),
        Gaps.hGap5,
      ],
    );
  }
}
