// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) {
  return _LanguagesModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageModel {
  @JsonKey(name: "dataEntity")
  String get entityName => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  LanguageValueModel get entityValue => throw _privateConstructorUsedError;

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) then) =
      _$LanguageModelCopyWithImpl<$Res, LanguageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "dataEntity") String entityName,
      @JsonKey(name: "value") LanguageValueModel entityValue});

  $LanguageValueModelCopyWith<$Res> get entityValue;
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res, $Val extends LanguageModel>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityName = null,
    Object? entityValue = null,
  }) {
    return _then(_value.copyWith(
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityValue: null == entityValue
          ? _value.entityValue
          : entityValue // ignore: cast_nullable_to_non_nullable
              as LanguageValueModel,
    ) as $Val);
  }

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageValueModelCopyWith<$Res> get entityValue {
    return $LanguageValueModelCopyWith<$Res>(_value.entityValue, (value) {
      return _then(_value.copyWith(entityValue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LanguagesModelImplCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$$LanguagesModelImplCopyWith(_$LanguagesModelImpl value,
          $Res Function(_$LanguagesModelImpl) then) =
      __$$LanguagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dataEntity") String entityName,
      @JsonKey(name: "value") LanguageValueModel entityValue});

  @override
  $LanguageValueModelCopyWith<$Res> get entityValue;
}

/// @nodoc
class __$$LanguagesModelImplCopyWithImpl<$Res>
    extends _$LanguageModelCopyWithImpl<$Res, _$LanguagesModelImpl>
    implements _$$LanguagesModelImplCopyWith<$Res> {
  __$$LanguagesModelImplCopyWithImpl(
      _$LanguagesModelImpl _value, $Res Function(_$LanguagesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityName = null,
    Object? entityValue = null,
  }) {
    return _then(_$LanguagesModelImpl(
      entityName: null == entityName
          ? _value.entityName
          : entityName // ignore: cast_nullable_to_non_nullable
              as String,
      entityValue: null == entityValue
          ? _value.entityValue
          : entityValue // ignore: cast_nullable_to_non_nullable
              as LanguageValueModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguagesModelImpl implements _LanguagesModel {
  const _$LanguagesModelImpl(
      {@JsonKey(name: "dataEntity") required this.entityName,
      @JsonKey(name: "value") required this.entityValue});

  factory _$LanguagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguagesModelImplFromJson(json);

  @override
  @JsonKey(name: "dataEntity")
  final String entityName;
  @override
  @JsonKey(name: "value")
  final LanguageValueModel entityValue;

  @override
  String toString() {
    return 'LanguageModel(entityName: $entityName, entityValue: $entityValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguagesModelImpl &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.entityValue, entityValue) ||
                other.entityValue == entityValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, entityName, entityValue);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguagesModelImplCopyWith<_$LanguagesModelImpl> get copyWith =>
      __$$LanguagesModelImplCopyWithImpl<_$LanguagesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguagesModelImplToJson(
      this,
    );
  }
}

abstract class _LanguagesModel implements LanguageModel {
  const factory _LanguagesModel(
      {@JsonKey(name: "dataEntity") required final String entityName,
      @JsonKey(name: "value")
      required final LanguageValueModel entityValue}) = _$LanguagesModelImpl;

  factory _LanguagesModel.fromJson(Map<String, dynamic> json) =
      _$LanguagesModelImpl.fromJson;

  @override
  @JsonKey(name: "dataEntity")
  String get entityName;
  @override
  @JsonKey(name: "value")
  LanguageValueModel get entityValue;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguagesModelImplCopyWith<_$LanguagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageValueModel _$LanguageValueModelFromJson(Map<String, dynamic> json) {
  return _LanguageValuesModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageValueModel {
  @JsonKey(
      name: "name",
      fromJson: localizedNameModelFromJson,
      toJson: localizedNameModelToJson)
  LocalizedNameModel get localizedName => throw _privateConstructorUsedError;
  @JsonKey(name: "dir")
  LanguageDir get direction => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: "isDefault", defaultValue: false)
  bool get isDefault => throw _privateConstructorUsedError;

  /// Serializes this LanguageValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageValueModelCopyWith<LanguageValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageValueModelCopyWith<$Res> {
  factory $LanguageValueModelCopyWith(
          LanguageValueModel value, $Res Function(LanguageValueModel) then) =
      _$LanguageValueModelCopyWithImpl<$Res, LanguageValueModel>;
  @useResult
  $Res call(
      {@JsonKey(
          name: "name",
          fromJson: localizedNameModelFromJson,
          toJson: localizedNameModelToJson)
      LocalizedNameModel localizedName,
      @JsonKey(name: "dir") LanguageDir direction,
      @JsonKey(name: "code") String languageCode,
      @JsonKey(name: "isDefault", defaultValue: false) bool isDefault});
}

/// @nodoc
class _$LanguageValueModelCopyWithImpl<$Res, $Val extends LanguageValueModel>
    implements $LanguageValueModelCopyWith<$Res> {
  _$LanguageValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedName = null,
    Object? direction = null,
    Object? languageCode = null,
    Object? isDefault = null,
  }) {
    return _then(_value.copyWith(
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as LocalizedNameModel,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LanguageDir,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageValuesModelImplCopyWith<$Res>
    implements $LanguageValueModelCopyWith<$Res> {
  factory _$$LanguageValuesModelImplCopyWith(_$LanguageValuesModelImpl value,
          $Res Function(_$LanguageValuesModelImpl) then) =
      __$$LanguageValuesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: "name",
          fromJson: localizedNameModelFromJson,
          toJson: localizedNameModelToJson)
      LocalizedNameModel localizedName,
      @JsonKey(name: "dir") LanguageDir direction,
      @JsonKey(name: "code") String languageCode,
      @JsonKey(name: "isDefault", defaultValue: false) bool isDefault});
}

/// @nodoc
class __$$LanguageValuesModelImplCopyWithImpl<$Res>
    extends _$LanguageValueModelCopyWithImpl<$Res, _$LanguageValuesModelImpl>
    implements _$$LanguageValuesModelImplCopyWith<$Res> {
  __$$LanguageValuesModelImplCopyWithImpl(_$LanguageValuesModelImpl _value,
      $Res Function(_$LanguageValuesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localizedName = null,
    Object? direction = null,
    Object? languageCode = null,
    Object? isDefault = null,
  }) {
    return _then(_$LanguageValuesModelImpl(
      localizedName: null == localizedName
          ? _value.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as LocalizedNameModel,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LanguageDir,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageValuesModelImpl extends _LanguageValuesModel {
  const _$LanguageValuesModelImpl(
      {@JsonKey(
          name: "name",
          fromJson: localizedNameModelFromJson,
          toJson: localizedNameModelToJson)
      required this.localizedName,
      @JsonKey(name: "dir") required this.direction,
      @JsonKey(name: "code") required this.languageCode,
      @JsonKey(name: "isDefault", defaultValue: false) required this.isDefault})
      : super._();

  factory _$LanguageValuesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageValuesModelImplFromJson(json);

  @override
  @JsonKey(
      name: "name",
      fromJson: localizedNameModelFromJson,
      toJson: localizedNameModelToJson)
  final LocalizedNameModel localizedName;
  @override
  @JsonKey(name: "dir")
  final LanguageDir direction;
  @override
  @JsonKey(name: "code")
  final String languageCode;
  @override
  @JsonKey(name: "isDefault", defaultValue: false)
  final bool isDefault;

  @override
  String toString() {
    return 'LanguageValueModel(localizedName: $localizedName, direction: $direction, languageCode: $languageCode, isDefault: $isDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageValuesModelImpl &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, localizedName, direction, languageCode, isDefault);

  /// Create a copy of LanguageValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageValuesModelImplCopyWith<_$LanguageValuesModelImpl> get copyWith =>
      __$$LanguageValuesModelImplCopyWithImpl<_$LanguageValuesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageValuesModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageValuesModel extends LanguageValueModel {
  const factory _LanguageValuesModel(
      {@JsonKey(
          name: "name",
          fromJson: localizedNameModelFromJson,
          toJson: localizedNameModelToJson)
      required final LocalizedNameModel localizedName,
      @JsonKey(name: "dir") required final LanguageDir direction,
      @JsonKey(name: "code") required final String languageCode,
      @JsonKey(name: "isDefault", defaultValue: false)
      required final bool isDefault}) = _$LanguageValuesModelImpl;
  const _LanguageValuesModel._() : super._();

  factory _LanguageValuesModel.fromJson(Map<String, dynamic> json) =
      _$LanguageValuesModelImpl.fromJson;

  @override
  @JsonKey(
      name: "name",
      fromJson: localizedNameModelFromJson,
      toJson: localizedNameModelToJson)
  LocalizedNameModel get localizedName;
  @override
  @JsonKey(name: "dir")
  LanguageDir get direction;
  @override
  @JsonKey(name: "code")
  String get languageCode;
  @override
  @JsonKey(name: "isDefault", defaultValue: false)
  bool get isDefault;

  /// Create a copy of LanguageValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageValuesModelImplCopyWith<_$LanguageValuesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
