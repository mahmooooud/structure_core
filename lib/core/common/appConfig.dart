import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:structure_core/core/common/resource.dart';
import 'package:structure_core/core/constants/enums/app_theme_enum.dart';
import 'package:structure_core/core/model/icon_model/icon_model.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import '../localization/localized_name_helper.dart';
import '../model/language_model/language_model.dart';

class AppConfig extends ChangeNotifier {
  AppConfig();

  late String _tempPath;

  String get getTempPath => _tempPath;

  //list dynamic icon
  List<IconModel> _icoMoonIcons = [];

  List<IconModel> get icoMoonIcons => _icoMoonIcons;

  Future<void> updateIcoMoonIcons(List<IconModel> icons) async {
    _icoMoonIcons = icons;
    notifyListeners();
  }

  //list dynamic icon
  List<IconModel> _primeIcons = [];

  List<IconModel> get primeIcons => _primeIcons;

  Future<void> updatePrimeIcons(List<IconModel> icons) async {
    _primeIcons = icons;
    notifyListeners();
  }

  bool showBottomNav = false;

  void changeBottomNavValue(bool value) {
    showBottomNav = value;
    notifyListeners();
  }

  bool isRTLDirection(BuildContext context) {
    final TextDirection currentDirection = Directionality.of(context);
    return currentDirection == TextDirection.rtl;
  }

  /// [_appLocale] app language, first start will be English we can change it
  /// from here
  Locale? _appLocale;

  /// Get current Locale supported
  Locale? get appLocal {
    return _appLocale;
  }

  /// Get current language code like [EN] or [AR]
  String get currentLanguageCode => appLocal?.languageCode ?? "ar";

  /// Get current language name like [English] or [Arabic]
  String get currentLanguageName => _supportedLanguages
      .firstWhere(
          (element) => element.entityValue.languageCode == currentLanguageCode)
      .entityValue
      .localizedName
      .getLocalizedString;

  String _defaultLanguage = "ar";

  LocalizedNameHelper? localizedNameHelper;

  String get defaultLanguage => _defaultLanguage;

  void setDefaultLanguage(String value) {
    _defaultLanguage = value;
    localizedNameHelper = LocalizedNameHelper(
        currentLanguage: currentLanguageCode, defaultLanguage: value);
  }

  List<LanguageModel> _supportedLanguages = [];

  List<LanguageModel> get supportedLanguages => _supportedLanguages;

  void setSupportedLanguages(List<LanguageModel> value) {
    _supportedLanguages = value;
  }



  AdaptiveThemeMode? _currentThemeEnum;

  /// Application theme enum.
  /// Default value is [AppThemes.LIGHT]
  AdaptiveThemeMode get currentThemeEnum => _currentThemeEnum!;

  /// Change your app theme with [currentThemeEnum] value.
  void changeTheme(AdaptiveThemeMode appThemes, BuildContext context) {
    if (appThemes == AdaptiveThemeMode.light) {
      _currentThemeEnum = AdaptiveThemeMode.light;
      // sets theme mode to light
      AdaptiveTheme.of(context).setLight();
    } else {
      _currentThemeEnum = AdaptiveThemeMode.dark;
      // sets theme mode to dark
      AdaptiveTheme.of(context).setDark();
    }
    notifyListeners();
  }

  String? _env;
  String? _currentVersion;
  String? _buildNumber;
  String? _appName;

  String? get env => _env;

  String? get currentVersion => _currentVersion;

  String? get buildNumber => _buildNumber;

  String? get appName => _appName;

  Future<void> getTemporaryDirectoryPath() async {
    _tempPath = (await getTemporaryDirectory()).path;
  }

  String _theme = 'N/A';

  String get theme => _theme;

  void setTheme(String value) {
    _theme = value;
    notifyListeners();
  }

  late double _fontSize;

  double get fontSize => _fontSize;




}
