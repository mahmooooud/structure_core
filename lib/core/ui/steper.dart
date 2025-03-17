import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget(
      {super.key,
      this.width = 250,
      this.stepsCount = 2,
      this.selctedIndex = 0,
      this.listTitles,
      this.fontSize});
  final double? width;
  final int? stepsCount;
  final int? selctedIndex;
  final List<String>? listTitles;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width!.w,
        child: Column(
          children: [
            Container(
              height: 10.h,
              width: width!.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50.r),
                  border:
                      Border.all(width: 1, color: context.colors.greenLight)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: getSteps(context, stepsCount, selctedIndex)),
            ),
            // Gaps.vGap5,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: getTitles(context, stepsCount, selctedIndex, fontSize),
            // )
          ],
        ),
      ),
    );
  }

  List<Widget> getSteps(BuildContext context, count, current) {
    List<Widget> steps = [];
    for (var i = 0; i < count!; i++) {
      steps.add(
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  color:
                      i > current ? Colors.transparent : context.colors.green,
                ),
              ),
              if (i < count - 1)
                Container(
                  color: context.colors.white,
                  width: 5,
                )
            ],
          ),
        ),
      );
    }
    return steps;
  }

  List<Widget> getTitles(
      BuildContext context, count, current, double? fontSize) {
    List<Widget> steps = [];
    for (var i = 0; i < count!; i++) {
      steps.add(
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomText(
                  listTitles?[i] ?? "",
                  textAlign: TextAlign.center,
                  textStyle: context.theme.textTheme.bodyMedium!.copyWith(
                      color: context.colors.titleBlack, fontSize: fontSize),
                  maxLines: 1,
                ),
              ),
              if (i < count - 1) Gaps.hGap5
            ],
          ),
        ),
      );
    }
    return steps;
  }
}
