import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:structure_core/core/navigation/base_route.dart';
import 'package:structure_core/core/net/base_option.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'package:shared_preferences/shared_preferences.dart';


@module
abstract class InjectionModule {
  //injecting third party libraries

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Logger get logger => Logger();

  @singleton
  HttpClient get httpClient => HttpClient(DioBaseOption().options);

  @singleton
  AppRouter get appRouter => AppRouter();

}
