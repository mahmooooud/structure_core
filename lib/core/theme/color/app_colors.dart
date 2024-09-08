import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:structure_core/core/common/appConfig.dart';
import 'package:structure_core/core/theme/color/_app_colors_dark.dart';
import 'package:structure_core/core/theme/color/_app_colors_light.dart';

abstract class AppColors {
  static final AppColorsDark _dark = AppColorsDark();
  static final AppColorsLight _light = AppColorsLight();

  static AppColors get noContextInstance =>  _light;

  static AppColors of(BuildContext context) =>
      context.read<AppConfig>().currentThemeEnum.isDark ? _dark : _light;

  late Color primary;
  late Color primaryInfo;
  late Color primaryLight;
  late Color primaryLight2;
  late Color primaryLight3;
  late Color primaryDark;
  late Color secondary;
  late Color grey;
  late Color grey2;
  late Color grey3;
  late Color grey4;
  late Color grey5;
  late Color grey6;
  late Color titleGrey;
  late Color darkGrey;
  late Color blueGrey;
  late Color lightGrey;
  late Color lightGrey2;
  late Color borderGrey;
  late Color borderGrey2;
  late Color shadowColorGrey;
  late Color backGroundColorGrey;
  late Color backGroundColorGrey2;
  late Color black;
  late Color titleBlack;
  late Color titleBlack2;
  late Color titleBlack3;
  late Color titleBlack4;
  late Color greenLight;
  late Color greenDark;
  late Color background;
  late Color transparent;
  late Color white;
  late Color red;
  late Color red2;
  late Color lightRed;
  late Color extraLightRed;
  late Color darkRed;
  late Color orange;
  late Color golden;
  late Color orange2;
  late Color orange3;
  late Color highlightBlue;
  late Color deepBlue;
  late Color lightBlue;
  late Color textGrey;
  late Color pendingColor;
  late Color latenessColor;
  late Color pendingLightColor;
  late Color rejectColor;
  late Color rejectLightColor;
  late Color approveColor;
  late Color withdrawColor;
  late Color withdrawLightColor;
  late Color inCompleteColor;
}
