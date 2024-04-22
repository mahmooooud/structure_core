import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/lib/lookups/data/models/lookups_model.dart';
import 'package:structure_core/core/result/result.dart';

abstract class LookupsDatasource {
  Future<MyResult<LookupsModel>> getLookup(String api, HttpMethod method);
}
