import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure_core/core/common/appConfig.dart';
import 'package:structure_core/core/theme/app_theme.dart';

class AppTextTheme extends TextTheme {
  @override
  final TextStyle headline1 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: const Color(0xff000000000));
  @override
  final TextStyle headline2 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      color: Color(0xff000000000));
  @override
  final TextStyle headline3 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: Color(0xff000000000));
  @override
  final TextStyle headline4 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000000));
  @override
  final TextStyle headline5 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xff000000000));
  @override
  final TextStyle headline6 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: Color(0xff000000000));
  @override
  final TextStyle overline = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );
  @override
  final TextStyle subtitle1 = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  @override
  final TextStyle subtitle2 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: Color(0xffffffff));
  @override
  final TextStyle bodyText1 = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: Color(0xffffffff));
  @override
  final TextStyle bodyText2 = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
}
