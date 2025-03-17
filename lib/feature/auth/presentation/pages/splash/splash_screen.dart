part of 'splash_imports.dart';

@RoutePage(name: SplashController.routeName)
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  late SplashController splashController;

  @override
  void initState() {
    splashController = SplashController();
    splashController.init();
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
      statusBarColor: context.colors.secondary,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        print("app in inactive");
        break;
      case AppLifecycleState.paused:
        print("app in paused");
        break;
      case AppLifecycleState.detached:
        print("app in detached");
        break;
      case AppLifecycleState.hidden:
        print("app in hidden");
        break;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies, mounted: $mounted');
  }

  @override
  void dispose() {
    print('dispose');
    WidgetsBinding.instance.removeObserver(this);
    splashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    splashController.setBuildContext(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        color: context.colors.background,
        width: context.width,
        height: context.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Res.splash_image,
              fit: BoxFit.fill,
              width: context.width,
              height: context.height,
            ),
          ],
        ),
      )
    );
  }
}
