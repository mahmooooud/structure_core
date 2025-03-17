import 'package:ndf/core/common/appConfig.dart';
import 'package:ndf/core/provider/change_order_status_provider.dart';
import 'package:ndf/core/provider/change_orders_list_status_provider.dart';
import 'package:ndf/core/provider/notification_provider.dart';
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
    ChangeNotifierProvider.value(
      value: NotificationProvider.instance,
    ),
    ChangeNotifierProvider.value(
      value: ChangeOrderStatusProvider.instance,
    ),
    ChangeNotifierProvider.value(
      value: ChangeOrdersListStatusProvider.instance,
    ),
  ];
}
