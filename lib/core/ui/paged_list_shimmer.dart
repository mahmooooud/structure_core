import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'build_shimmer_view.dart';

class PagedListShimmer extends StatelessWidget {
  const PagedListShimmer({super.key, this.height});
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              children: List.filled(3, null)
                  .map((e) => Container(
                      margin: EdgeInsets.only(top: 10.h),
                      child: BuildShimmerView(height: height ?? 50.h)))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
