import 'package:freezed_annotation/freezed_annotation.dart';

enum CollectionDataEntityType{
  @JsonValue("ADTString")
  localizedText("ADTString"),

  @JsonValue("ADTNumber")
  number("ADTNumber"),

  @JsonValue("ADTDate")
  date("ADTDate"),

  @JsonValue("ADTTime")
  time("ADTTime"),


  @JsonValue("ADTDatetime")
  dateTime("ADTDatetime"),

  entity();


  final String? value;
  const CollectionDataEntityType([this.value]);
}