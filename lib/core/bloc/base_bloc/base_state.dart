import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structure_core/core/errors/base_error.dart';

part 'base_state.freezed.dart';

@immutable
@freezed
class BaseState<T> with _$BaseState<T> {
  const factory BaseState.init() = _Init;

  const factory BaseState.loading() = _Loading;

  const factory BaseState.success([T? model]) = _Success<T>;

  const factory BaseState.failure(BaseError error, VoidCallback callback) = _Failure;
}
