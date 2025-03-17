import 'package:ndf/core/model/api_model/base_api_model.dart';
import 'package:ndf/core/model/domain_model/base_domain_model.dart';
import 'package:ndf/core/result/result.dart';

/// from implements x repository add with ModelToDomainResult after the name of class
mixin ModelToDomainResult {
  /// tbc:
  /// MyResult<BlobModel> result = await iBlobRemoteSource.uploadAttachment(file);
  /// return toDomainResult<Blob, BlobModel>(result);
  MyResult<D> toDomainResult<D extends BaseDomainModel, M extends BaseApiModel>(
      MyResult<M> result) {
    return result.when(isSuccess: (data) {
      return MyResult<D>.isSuccess(data?.toDomainModel() as D);
    }, isError: (error) {
      return MyResult<D>.isError(error);
    });
  }

  /// MyResult<List<BlobModel>> result = await iBlobRemoteSource.uploadAttachment(file);
  /// return toDomainResultList<Blob, BlobModel>(result);
  MyResult<List<D>> toDomainResultList<D, M extends BaseApiModel>(
      MyResult<List<M>> result) {
    return result.when(isSuccess: (data) {
      if (data == null) return MyResult<List<D>>.isSuccess();
      final List<D> domain =
          List<D>.from(data.map((e) => e.toDomainModel())).toList();
      return MyResult<List<D>>.isSuccess(domain);
    }, isError: (error) {
      return MyResult<List<D>>.isError(error);
    });
  }
}
