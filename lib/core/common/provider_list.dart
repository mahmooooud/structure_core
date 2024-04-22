import 'package:structure_core/core/common/appConfig.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'notify_count.dart';

class ApplicationProvider {
  static final ApplicationProvider _instance = ApplicationProvider._init();

  ApplicationProvider._init();

  factory ApplicationProvider() => _instance;

  List<SingleChildWidget> blocItems = [];
  List<SingleChildWidget> providerItems = [];
  List<SingleChildWidget> changeNotifierItems = [
    ChangeNotifierProvider.value(
      value: AppConfig(),
    ),
    ChangeNotifierProvider.value(
      value: NotifyCount.instance,
    ),
  ];
}
