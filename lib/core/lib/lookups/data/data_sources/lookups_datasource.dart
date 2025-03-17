import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/lib/lookups/data/models/lookups_model.dart';
import 'package:ndf/core/model/lists_parameter/lists_parameter_model.dart';
import 'package:ndf/core/result/result.dart';

abstract class LookupsDatasource {
  Future<MyResult<LookupsModel>> getLookup(
      String api, HttpMethod method, ListsParameterModel filterEntityModel);
}
