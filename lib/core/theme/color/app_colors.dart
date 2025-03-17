import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/theme/color/_app_colors_dark.dart';
import 'package:ndf/core/theme/color/_app_colors_light.dart';

abstract class AppColors {
  static final AppColorsDark _dark = AppColorsDark();
  static final AppColorsLight _light = AppColorsLight();

  static AppColors get noContextInstance => GetIt.I<AppRouter>()
          .navigatorKey
          .currentContext!
          .read<AppConfig>()
          .currentThemeEnum
          .isDark
      ? _dark
      : _light;

  static AppColors of(BuildContext context) =>
      context.read<AppConfig>().currentThemeEnum.isDark ? _dark : _light;

  late Color primary;
  late Color primaryLight;
  late Color secondary;
  late Color grey;
  late Color grey2;
  late Color grey3;
  late Color grey4;
  late Color grey5;

  late Color iconGrey;
  late Color greyBlur;
  late Color darkGrey;
  late Color borderGrey;
  late Color titleGrey;
  late Color shadowGrey;
  late Color backGroundColorGrey;
  late Color backGroundColorGrey2;
  late Color black;
  late Color titleBlack;
  late Color titleBlack2;
  late Color titleBlack3;
  late Color titleBlack4;
  late Color green;
  late Color greenLight;
  late Color greenButton;
  late Color background;
  late Color transparent;
  late Color white;
  late Color offWhite;
  late Color offWhite2;
  late Color offWhite3;
  late Color red;
  late Color red2;
  late Color red3;
  late Color red4;
  late Color lightRed;
  late Color extraLightRed;
  late Color darkRed;
  late Color orange;
  late Color golden;
  late Color orange2;
  late Color orangeLight;
  late Color highlightBlue;
  late Color deepBlue;
  late Color lightBlue;
  late Color blueText;
  late Color blu100;
  late Color pendingColor;
  late Color latenessColor;
  late Color pendingLightColor;
  late Color rejectColor;
  late Color rejectLightColor;
  late Color approveColor;
  late Color withdrawColor;
  late Color withdrawLightColor;
  late Color inCompleteColor;
  late Color dayOffColor;
  late Color exceptionColor;
  late Color yellowColor;
  late Color gold;
  late LinearGradient greenGradient;
}
