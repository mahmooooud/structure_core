import 'package:ndf/core/filter/base/base_filter_part.dart';

// enum s{Active(1),Archive(2) all(null)}
class WhereFilter implements BaseFilterPart {
  final int? state;
  final String? searchText;

  WhereFilter({
    this.state,
    this.searchText,
  });

  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};

    /// Search
    if (searchText != null && searchText != "") {
      json.addAll({
        "\$text": {"\$search": "\"$searchText\""}
      });
    }

    /// State
    if (state != null) {
      json.addAll({'state': state});
    }
    return {"where": json};
  }
}
