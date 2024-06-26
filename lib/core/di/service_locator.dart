import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

@InjectableInit()
Future<void> configureDependencies() async => GetItInjectableX(GetIt.I).init();
