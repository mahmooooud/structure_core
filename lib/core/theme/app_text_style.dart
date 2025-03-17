import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/theme/app_theme.dart';

class AppTextTheme extends TextTheme {
  @override
  TextStyle? titleLarge = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 24.sp,
      fontWeight: FontWeight.w800,
      color: Colors.black);

  @override
  TextStyle? titleMedium = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 22.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  @override
  TextStyle? titleSmall = TextStyle(
      fontFamily: AppConfig().currentLanguageCode == 'en'
          ? AppTheme.fontFamilyEg
          : AppTheme.fontFamily,
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: Colors.black);

  @override
  TextStyle? bodyLarge = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 18.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  @override
  TextStyle? bodyMedium = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 16.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  @override
  TextStyle? bodySmall = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 14.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle? displaySmall = TextStyle(
    fontFamily: AppConfig().currentLanguageCode == 'en'
        ? AppTheme.fontFamilyEg
        : AppTheme.fontFamily,
    fontSize: 12.sp,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
}
