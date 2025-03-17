part of 'package:ndf/feature/auth/presentation/pages/sign_up/presentation/sign_up_imports.dart';

class TermsDialog extends StatelessWidget {
  const TermsDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: BorderRadius.circular(25)),
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogTitleWidget(
            title: Translate.s.terms_of_use,
            titleFontSize: 24.sp,
            titleMsg: "Last updated on 1/12/2021",
          ),
          Gaps.vGap16,
          CustomText(
            "1. Clause 1",
            textStyle: context.textTheme.bodySmall!.copyWith(
                color: context.colors.titleBlack, fontWeight: FontWeight.w500),
          ),
          Gaps.vGap16,
          CustomText(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra condimentum eget purus in. Consectetur eget id morbi amet amet, in. Ipsum viverra pretium tellus neque. Ullamcorper suspendisse aenean leo pharetra in sit semper et. Amet quam placerat sem",
            textStyle: context.textTheme.bodySmall!.copyWith(
                color: context.colors.titleGrey, fontWeight: FontWeight.w500),
            maxLines: 100,
          )
        ],
      ),
    );
  }
}
