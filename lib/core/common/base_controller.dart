import 'package:flutter/material.dart';

abstract class BaseController {
  /// [setBuildContext] should be called inside the build method of state less of stateFull widgets.
  void setBuildContext(BuildContext widgetContext);

  late BuildContext context;

  void init(){}

  void dispose();
}
