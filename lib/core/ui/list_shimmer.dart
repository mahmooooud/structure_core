import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/ui/h_line.dart';
import 'package:ndf/core/ui/main_container.dart';
import 'package:ndf/core/ui/shimmer/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListShimmer extends StatelessWidget {
  final bool isAttendance;
  final bool isNotification;
  const ListShimmer(
      {Key? key, this.isAttendance = false, this.isNotification = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: List.generate(5, (index) {
              return Column(
                children: [
                  MainContainer(
                    padding: EdgeInsets.all(16),
                    borderRadius: BorderRadius.circular(4.r),
                    elevation: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShimmerWidget(
                              child: SizedBox(
                                height: 10.h,
                                width: 120.w,
                              ),
                            ),
                            Gaps.vGap16,
                            ShimmerWidget(
                              child: SizedBox(
                                height: 10.h,
                                width: 60.w,
                              ),
                            ),
                          ],
                        ),
                        if (!isNotification) HLine(verticalPadding: 8),
                        if (!isNotification)
                          Visibility(
                            visible: isAttendance,
                            replacement: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ShimmerWidget(
                                      child: SizedBox(
                                        height: 10.h,
                                        width: 65.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ShimmerWidget(
                                  child: SizedBox(
                                    height: 15.h,
                                    width: 65.w,
                                  ),
                                ),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                  Gaps.vGap10,
                ],
              );
            }),
          )
        ],
      ),
    );
  }
}
