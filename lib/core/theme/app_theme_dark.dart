import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ndf/core/theme/color/app_colors.dart';
import 'package:ndf/core/theme/app_text_style.dart';
import 'package:ndf/core/theme/color/_app_colors_dark.dart';
import '../theme/app_theme.dart';

class AppThemeDark implements AppTheme {
  final AppColors _colorsLight = AppColorsDark();

  late AppTextTheme _appTextTheme;

  AppThemeDark() {
    _appTextTheme = AppTextTheme();
  }

  @override
  ThemeData get theme => ThemeData(
        // fontFamily: AppTheme.fontFamily,
        useMaterial3: false,
        colorScheme: colorScheme,
        textTheme: textTheme,
        radioTheme: RadioThemeData(
          fillColor: MaterialStateProperty.all(_colorsLight.secondary),
        ),
        unselectedWidgetColor: Colors.black45,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(_colorsLight.primary),
          checkColor: MaterialStateProperty.all(_colorsLight.primary),
        ),
        appBarTheme: AppBarTheme(
          color: _colorsLight.titleBlack,
          elevation: 0,
          centerTitle: true,
          titleTextStyle:
              textTheme.titleLarge?.copyWith(color: _colorsLight.titleBlack),
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light),
          iconTheme: IconThemeData(color: _colorsLight.titleBlack, size: 21),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            decorationThickness: 0,
          ),
          border: OutlineInputBorder(),
          labelStyle: TextStyle(
            decorationThickness: 0,
          ),
          errorStyle: TextStyle(height: 0.8),
        ),
        scaffoldBackgroundColor: _colorsLight.titleBlack,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return _colorsLight.titleBlack;
              }
              return _colorsLight.titleBlack;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return _colorsLight.titleBlack;
              }
              return _colorsLight.titleBlack;
            },
          ),
          overlayColor: MaterialStateProperty.resolveWith((states) {
            return (Colors.white).withOpacity(0.12);
          }),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.all(12.r)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        )),
        snackBarTheme:
            SnackBarThemeData(backgroundColor: _colorsLight.titleBlack),
      );

  @override
  TextTheme get textTheme => TextTheme(
        titleLarge: _appTextTheme.titleLarge,
        titleMedium: _appTextTheme.titleMedium,
        titleSmall: _appTextTheme.titleSmall,
        bodyLarge: _appTextTheme.bodyLarge,
        bodyMedium: _appTextTheme.bodyMedium,
        bodySmall: _appTextTheme.bodySmall,
        displaySmall: _appTextTheme.displaySmall,
      );

  @override
  ColorScheme get colorScheme => ColorScheme(
        primary: _colorsLight.titleBlack,
        onPrimary: _colorsLight.titleBlack,
        secondary: _colorsLight.titleBlack,
        onSecondary: _colorsLight.titleBlack,
        error: _colorsLight.titleBlack,
        onError: _colorsLight.white,
        background: _colorsLight.titleBlack,
        onBackground: _colorsLight.titleBlack,
        surface: _colorsLight.titleBlack,
        onSurface: _colorsLight.white,
        brightness: Brightness.dark,
      );
}
