import 'package:ndf/core/filter/base/base_filter_part.dart';
import 'package:ndf/core/filter/sort/sort_item.dart';

class SortFilter implements BaseFilterPart {
  final List<SortItem> _items = [];

  List<SortItem> get items => _items;

  SortFilter.init();

  void addItem(SortItem item) {
    _items.add(item);
  }

  void clear() {
    _items.clear();
  }

  @override
  Map<String, dynamic> toJson() {
    if (_items.isEmpty) {
      return const {};
    } else {
      return {
        "order": _items.map((e) => e.toString()).toList(),
      };
    }
  }
}
