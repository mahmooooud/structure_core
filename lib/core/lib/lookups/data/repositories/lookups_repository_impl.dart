import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/lib/lookups/data/data_sources/lookups_datasource.dart';
import 'package:structure_core/core/lib/lookups/data/models/lookups_model.dart';
import 'package:structure_core/core/lib/lookups/domain/repositories/lookups_repository.dart';
import 'package:structure_core/core/result/result.dart';



@Injectable(as: LookupsRepository)
class LookupsRepositoryImpl extends LookupsRepository {
  @override
  Future<MyResult<LookupsModel>> getLookup(String api, HttpMethod method) async {
    var result = await GetIt.I
        .get<LookupsDatasource>()
        .getLookup(api, method);
    return result.when(
      isSuccess: (model) {
        return MyResult.isSuccess(model!);
      },
      isError: (error) => MyResult.isError(error),
    );
  }
}
