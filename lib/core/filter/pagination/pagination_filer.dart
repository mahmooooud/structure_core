import 'package:structure_core/core/constants/app/app_constants.dart';
import 'package:structure_core/core/filter/base/base_filter_part.dart';

class PaginationFilter implements BaseFilterPart {
  int _skip;
  int? _limit;

  int get skip => _skip;

  int? get limit => _limit;

  set limit(int? value) {
    _limit = value;
  }

  PaginationFilter({required int skip, required int limit})
      : _skip = skip,
        _limit = limit;

  factory PaginationFilter.init() {
    return PaginationFilter(
      skip: ApplicationConstants.paginationSkip,
      limit: ApplicationConstants.paginationLimit,
    );
  }

  void next() {
    _skip += 1;
  }

  void reset() {
    _skip = 0;
  }

  @override
  Map<String, dynamic> toJson() {
    if (_limit == null) {
      return {};
    }
    return {
      "limit": _limit,
      "skip": _skip,
    };
  }
}
