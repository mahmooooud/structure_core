import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:structure_core/core/constants/enums/http_method.dart';
import 'package:structure_core/core/lib/lookups/data/models/lookups_model.dart';
import 'package:structure_core/core/net/http_client.dart';
import 'package:structure_core/core/result/result.dart';
import 'lookups_datasource.dart';

@Injectable(as: LookupsDatasource)
class LookupsDatasourceImpl extends LookupsDatasource {
  @override
  Future<MyResult<LookupsModel>> getLookup(String api, HttpMethod method) async {
    return await GetIt.I<HttpClient>().request<LookupsModel>(
      converter: (json) => LookupsModel.fromJson(json),
      isPostRequest: false,
      method: method,
      url: api,
      cancelToken: CancelToken(),
    );
  }
}
