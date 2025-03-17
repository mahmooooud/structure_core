import 'package:flutter/material.dart';
import 'package:ndf/core/theme/color/app_colors.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  AppColors get colors => AppColors.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get bodyHeight =>
      MediaQuery.of(this).size.height -
      MediaQuery.of(this).viewPadding.top -
      MediaQuery.of(this).viewInsets.top;

  double get bodyHeightWithoutAppBar => bodyHeight - 53;

  double get width => MediaQuery.of(this).size.width;

  double get px => MediaQuery.of(this).devicePixelRatio;

  double get keyBoardHeight => MediaQuery.of(this).viewInsets.bottom;
}
