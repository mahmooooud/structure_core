import 'package:get_it/get_it.dart';
import 'package:structure_core/core/init_core.dart';

class Translate{

  Translate._();

  static S get s{
    return S.of(InitCore().context);
  }
}