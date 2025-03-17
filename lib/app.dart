import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/common/provider_list.dart';
import 'package:ndf/core/constants/app/app_constants.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/theme/app_theme_dark.dart';
import 'package:ndf/core/theme/app_theme_light.dart';
import 'package:provider/provider.dart';
import 'core/navigation/base_route.gr.dart';
import 'generated/l10n.dart';
// import 'package:chucker_flutter/chucker_flutter.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      /// [Size] must be set like as Figma or XD design
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) => MultiProvider(
        providers: [
          ...ApplicationProvider().providerItems,
          ...ApplicationProvider().changeNotifierItems,
        ],
        child: Consumer<AppConfig>(
          builder: (context, provider, child) {
            return AdaptiveTheme(
                light: AppThemeLight().theme,
                dark: AppThemeDark().theme,
                initial: provider.currentThemeEnum,
                builder: (theme, darkTheme) {
                  final botToastBuilder = BotToastInit();
                  return MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    title: ApplicationConstants.TITLE_APP_NAME,
                    theme: AppThemeLight().theme,
                    themeMode: ThemeMode.light,
                    darkTheme: darkTheme,
                    routerDelegate:
                        GetIt.I<AppRouter>().delegate(navigatorObservers: () {
                      return [
                        // ChuckerFlutter.navigatorObserver,
                        BotToastNavigatorObserver(),
                        //  FirebaseAnalyticsObserver(analytics: GetIt.I<FirebaseAnalyticsHelper>().analytics)
                      ];
                    }),
                    builder: (ctx, child) {
                      child = MediaQuery(

                          ///Setting font does not change with system font size
                          data: MediaQuery.of(ctx)
                              .copyWith(textScaleFactor: 1, boldText: false),
                          child: child!);
                      child =
                          botToastBuilder(context, child); //do so//do something
                      return FlutterEasyLoading(child: child);
                    },
                    // Returns a locale which will be used by the app
                    localeResolutionCallback: (locale, supportedLocales) {
                      // Check if the current device locale is supported
                      for (var supportedLocale in supportedLocales) {
                        if (supportedLocale.languageCode ==
                            locale!.languageCode) {
                          Provider.of<AppConfig>(context, listen: false)
                              .changeLanguage(locale.languageCode);
                          return supportedLocale;
                        }
                      }
                      // If the locale of the device is not supported, use the first one
                      // from the list (English, in this case).
                      Provider.of<AppConfig>(context, listen: false)
                          .changeLanguage(supportedLocales.first.languageCode);
                      return supportedLocales.first;
                    },
                    routeInformationParser:
                        GetIt.I<AppRouter>().defaultRouteParser(),
                    supportedLocales: S.delegate.supportedLocales,
                    locale: provider.appLocal,
                    // These delegates make sure that the localization data for the proper language is loaded
                    localizationsDelegates: const [
                      // 1
                      S.delegate,
                      // 2
                      DefaultCupertinoLocalizations.delegate,
                      // Built-in localization of basic text for Material widgets
                      GlobalMaterialLocalizations.delegate,
                      // Built-in localization for text direction LTR/RTL
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
