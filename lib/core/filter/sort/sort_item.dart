import 'package:ndf/core/constants/enums/order_enum.dart';

class SortItem {
  final String propName;
  final OrderEnum order;

  const SortItem(this.propName, this.order);

  factory SortItem.fromNormalizedName(String normalizedName, OrderEnum order) {
    return SortItem('value.$normalizedName', order);
  }

  String getNormalizedName() {
    // ignore: unnecessary_string_interpolations
    final str = '$propName';
    return str.replaceAll('value.', '');
  }

  @override
  String toString() {
    return "$propName ${order.value}";
  }
}
