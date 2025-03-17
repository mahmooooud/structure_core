import 'package:get_it/get_it.dart';
import 'package:ndf/core/navigation/base_route.dart';
import 'package:ndf/core/navigation/base_route.gr.dart';
import 'package:ndf/generated/l10n.dart';

class Translate {
  Translate._();

  static S get s {
    return S.of(GetIt.I<AppRouter>().navigatorKey.currentContext!);
  }
}
