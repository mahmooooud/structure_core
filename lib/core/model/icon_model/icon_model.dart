class IconModel {
  final String name;
  final int code;

  IconModel({required this.name, required this.code});

  factory IconModel.fromJson(json) => IconModel(
        name: json["properties"]["name"],
        code: json["properties"]["code"],
      );

  @override
  String toString() {
    return 'IconModel{name: $name, code: $code}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IconModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          code == other.code;

  @override
  int get hashCode => name.hashCode ^ code.hashCode;
}
