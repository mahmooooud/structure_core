import 'package:get_it/get_it.dart';
import 'package:structure_core/core/navigation/base_route.dart';
import 'package:structure_core/core/navigation/base_route.gr.dart';

class Translate{

  Translate._();

  static S get s{
    return S.of(GetIt.I<AppRouter>().navigatorKey.currentContext!);
  }
}