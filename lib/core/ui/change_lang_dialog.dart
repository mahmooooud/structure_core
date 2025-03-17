import 'package:ndf/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/common/gaps.dart';
import 'package:ndf/core/common/resource.dart';
import 'package:ndf/core/localization/translate.dart';
import 'package:ndf/core/ui/custom_button.dart';
import 'package:ndf/core/ui/custom_text.dart';
import 'package:ndf/core/ui/dialog_title_row.dart';
import 'package:ndf/core/ui/svg_assets.dart';

import 'package:ndf/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLangDialog extends StatelessWidget {
  final Function(String lang) onSelect;
  ChangeLangDialog({
    super.key,
    required this.onSelect,
  });

  GenericBloc<String> lang =
      GenericBloc(AppConfig().currentLanguageCode.toLowerCase());

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DialogRowTitle(title: Translate.s.language),
      Gaps.vGap12,
      Gaps.vGap12,
      Gaps.vGap12,
      SingleChildScrollView(
        child: BlocBuilder<GenericBloc<String>, GenericState<String>>(
          bloc: lang,
          builder: (context, state) {
            return Column(children: [
              LanguageCard(
                flag: Res.usa,
                title: "English",
                isSelected: state.data == 'en',
              ).press(onTap: () {
                lang.onUpdateData("en");
              }),
              Gaps.vGap12,
              LanguageCard(
                flag: Res.arabic,
                title: "العربية",
                isSelected: state.data == 'ar',
              ).press(onTap: () {
                lang.onUpdateData("ar");
              }),
              Gaps.vGap12,
              CustomButton(
                child: CustomText(
                  Translate.s.change_language,
                  textStyle: context.textTheme.bodyMedium!
                      .copyWith(color: context.colors.white, height: 1),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                  onSelect.call(lang.state.data ?? "");
                },
              ),
            ]);
          },
        ),
      )
    ]);
  }
}

class LanguageCard extends StatelessWidget {
  const LanguageCard({
    super.key,
    required this.title,
    required this.flag,
    required this.isSelected,
  });

  final String title;
  final String flag;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: context.colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 25,
            height: 25,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 1,
                    color: isSelected
                        ? context.colors.primary
                        : context.colors.borderGrey)),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: isSelected
                    ? context.colors.primary
                    : context.colors.offWhite,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Gaps.hGap8,
          SvgAssets.getWidget(flag, height: 25, width: 25),
          Gaps.hGap8,
          CustomText(
            title,
            textStyle: context.textTheme.bodyMedium!.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: context.colors.titleBlack),
          )
        ],
      ),
    );
  }
}
