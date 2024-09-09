import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structure_core/core/errors/base_error.dart';


part 'result.freezed.dart';

@freezed
class MyResult<T> with _$MyResult<T> {
  const factory MyResult.isSuccess([T? model]) = IsSuccess<T>;

  const factory MyResult.isError(BaseError error) = IsError;
}
