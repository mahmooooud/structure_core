part of 'package:ndf/feature/auth/presentation/pages/sign_up/presentation/sign_up_imports.dart';

class StepperWidget extends StatelessWidget {
  const StepperWidget({
    super.key,
    required this.selectedStep,
    required this.listTitles,
    this.stepsCount,
  });

  final int selectedStep;
  final int? stepsCount;
  final List<String> listTitles;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(listTitles[selectedStep],
            textStyle: context.textTheme.bodyMedium!
                .copyWith(fontWeight: FontWeight.w600)),
        Gaps.vGap5,
        Row(
          children: getSteps(context, stepsCount ?? 2, selectedStep),
        ),
      ],
    );
  }

  List<Widget> getSteps(BuildContext context, count, current) {
    List<Widget> steps = [];
    for (var i = 0; i < count!; i++) {
      steps.add(
        Step(
          index: i,
          selectedStep: current,
        ),
      );
    }
    return steps;
  }
}

class Step extends StatelessWidget {
  const Step({
    super.key,
    required this.selectedStep,
    required this.index,
  });

  final int selectedStep;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 7.h,
          decoration: BoxDecoration(
              color: selectedStep >= index
                  ? context.colors.primary
                  : context.colors.backGroundColorGrey2,
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
