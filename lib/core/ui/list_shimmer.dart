import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/gaps.dart';
import 'package:structure_core/core/ui/h_line.dart';
import 'package:structure_core/core/ui/main_container.dart';
import 'package:structure_core/core/ui/shimmer/shimmer_widget.dart';


class ListShimmer extends StatelessWidget {
  final bool isAttendance;
  final bool isNotification;
  const ListShimmer({Key? key,this.isAttendance = false,this.isNotification = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget(
            child: SizedBox(
              height: 10.h,
              width: 120.w,
            ),
          ),
          Gaps.vGap8,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(5, (index){
                  return Column(
                    children: [
                      MainContainer(
                        elevation: true,
                        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                width: 150.w,
                              ),
                            ),
                            Gaps.vGap8,
                            if(!isNotification)
                              HLine(),
                            if(!isNotification)
                            Gaps.vGap8,
                            if(!isNotification)
                            Visibility(
                              visible: isAttendance,
                              replacement: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShimmerWidget(
                                        child: SizedBox(
                                          height: 10.h,
                                          width: 65.w,
                                        ),
                                      ),
                                      Gaps.hGap8,
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
                                const VLine(),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
