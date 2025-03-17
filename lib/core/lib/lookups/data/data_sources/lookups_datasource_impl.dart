import 'package:ndf/core/model/lists_parameter/lists_parameter_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ndf/core/constants/enums/http_method.dart';
import 'package:ndf/core/lib/lookups/data/models/lookups_model.dart';
import 'package:ndf/core/net/http_client.dart';
import 'package:ndf/core/result/result.dart';
import 'lookups_datasource.dart';

@Injectable(as: LookupsDatasource)
class LookupsDatasourceImpl extends LookupsDatasource {
  @override
  Future<MyResult<LookupsModel>> getLookup(String api, HttpMethod method,
      ListsParameterModel filterEntityModel) async {
    return await GetIt.I<HttpClient>().request<LookupsModel>(
      converter: (json) => LookupsModel.fromJson(json),
      isPostRequest: false,
      method: method,
      // forceRefresh: false,
      url: api,
      body: filterEntityModel.toJson(),
      cancelToken: CancelToken(),
    );
  }
}
