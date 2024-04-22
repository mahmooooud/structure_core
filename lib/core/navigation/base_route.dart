import 'package:auto_route/auto_route.dart';

import 'base_route.gr.dart';

/// when create new screen we should create 2 static variable
/// routeName and pathName
/// ex:
/// class ChooseLanguage extends StatefulWidget {
///   static const String routeName = 'ChooseLanguageRoute';
///   static const String pathName = '/choose-language';
///   @override
///   State<ChooseLanguage> createState() => _ChooseLanguageState();
/// }
///
/// CupertinoRoute(
///       page: ChooseLanguage,
///       name: ChooseLanguage.routeName,
///       path: ChooseLanguage.pathName,
///     ),
///

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.custom();
  @override
  final List<AutoRoute> routes = [

  ];
}
