part of 'splash_imports.dart';

class SplashController extends BaseController {
  static const routeName = "SplashRoute";
  var prefs = GetIt.I<ISpHelper>();
  factory SplashController() {
    return _singleton;
  }
  SplashController._internal();
  static final SplashController _singleton = SplashController._internal();
  @override
  void init({Map<String, dynamic>? data}) {
    checkFirstTimeRunApp();
  }

  Future<void> checkFirstTimeRunApp() async {
    String? apiToken = await GetIt.I<ISpHelper>().authToken;
    bool isAnonymousToken = await GetIt.I<ISpHelper>().isAnonymousToken;
    Future.delayed(Duration(seconds: 2), () {
      if (isAnonymousToken || apiToken == null) {
        GetIt.I<AppRouter>().replace(LoginRoute());
      } else {
        GetIt.I<AppRouter>().replace(LoginRoute());
      }
    });
  }

  @override
  void dispose() {
    if (kDebugMode) {
      print('dispose');
    }
  }

  @override
  void setBuildContext(BuildContext widgetContext) {
    context = widgetContext;
  }
}
