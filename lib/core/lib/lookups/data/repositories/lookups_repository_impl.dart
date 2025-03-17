import 'package:ndf/core/model/lists_parameter/lists_parameter_model.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/lib/lookups/data/data_sources/lookups_datasource.dart';
import 'package:ndf/core/lib/lookups/data/models/lookups_model.dart';
import 'package:ndf/core/lib/lookups/domain/repositories/lookups_repository.dart';
import 'package:ndf/core/result/result.dart';

@Injectable(as: LookupsRepository)
class LookupsRepositoryImpl extends LookupsRepository {
  @override
  Future<MyResult<LookupsModel>> getLookup(String api, HttpMethod method,
      ListsParameterModel filterEntityModel) async {
    var result = await GetIt.I
        .get<LookupsDatasource>()
        .getLookup(api, method, filterEntityModel);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
