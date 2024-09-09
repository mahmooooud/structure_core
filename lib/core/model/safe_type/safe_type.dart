import 'dart:convert';

/// [SafeNum] parse json of type [num] to [SafeNum]
class SafeNum {
  final num? safeValue;
  final bool isUnexpectedValue;

  const SafeNum({this.safeValue, this.isUnexpectedValue = false});

  factory SafeNum.fromJson(dynamic value, {num? defaultValue}) {
    if (value == null) {
      if (defaultValue != null) {
        return SafeNum(safeValue: defaultValue);
      } else {
        return const SafeNum();
      }
    } else if (value is num) {
      return SafeNum(safeValue: value);
    } else if (value is String) {
      try {
        return SafeNum(safeValue: num.parse(value));
      } catch (e) {
        return const SafeNum(isUnexpectedValue: true);
      }
    }
    return const SafeNum(isUnexpectedValue: true);
  }

  SafeNum copyWith({num? safeValue}) {
    return SafeNum(
      safeValue: safeValue ?? this.safeValue,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SafeNum &&
          runtimeType == other.runtimeType &&
          safeValue == other.safeValue &&
          isUnexpectedValue == other.isUnexpectedValue;

  @override
  int get hashCode => safeValue.hashCode ^ isUnexpectedValue.hashCode;

  @override
  String toString() {
    return 'SafeNum{safeValue: $safeValue, isUnexpectedValue: $isUnexpectedValue}';
  }
}

/// [SafeBool] parse json of type [bool] to [SafeBool]
class SafeBool {
  final bool safeValue;

  const SafeBool({required this.safeValue});

  SafeBool copyWith({bool? safeValue}) {
    return SafeBool(safeValue: safeValue ?? this.safeValue);
  }

  factory SafeBool.fromJson(dynamic value, {bool? defaultValue}) {
    if (value == null) {
      if (defaultValue != null) {
        return SafeBool(safeValue: defaultValue);
      } else {
        return const SafeBool(safeValue: false);
      }
    }
    if (value is bool) {
      return SafeBool(safeValue: value);
    } else if (value is String) {
      if (value.toString().toLowerCase() == "true") return const SafeBool(safeValue: true);
    }
    return const SafeBool(safeValue: false);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SafeBool && runtimeType == other.runtimeType && safeValue == other.safeValue;

  @override
  int get hashCode => safeValue.hashCode;

  @override
  String toString() {
    return '$safeValue';
  }
}

/// [SafeString] parse json of type [String] to [SafeString]
class SafeString {
  final String? safeValue;
  final bool isUnexpectedValue;

  const SafeString({this.safeValue, this.isUnexpectedValue = false});

  factory SafeString.fromJson(dynamic value, {String? defaultValue}) {
    if (value == null) {
      if (defaultValue != null) {
        return SafeString(safeValue: defaultValue);
      } else {
        return const SafeString(safeValue: "");
      }
    }
    if (value is String) {
      return SafeString(safeValue: value);
    } else if (value is num) {
      return SafeString(safeValue: value.toString());
    }
    if (defaultValue != null) return SafeString(safeValue: defaultValue);
    return const SafeString(isUnexpectedValue: true);
  }

  SafeString copyWith({String? safeValue, bool? isUnexpectedValue}) {
    return SafeString(
      safeValue: safeValue ?? this.safeValue,
      isUnexpectedValue: isUnexpectedValue ?? this.isUnexpectedValue,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SafeBool && runtimeType == other.runtimeType && safeValue == other.safeValue;

  @override
  int get hashCode => safeValue.hashCode;

  @override
  String toString() {
    return '$safeValue';
  }
}

/// [SafeMap] parse json of type [Map] to [SafeMap]
class SafeMap {
  final Map<String, dynamic>? safeValue;
  final bool isUnexpectedValue;

  const SafeMap({this.safeValue, this.isUnexpectedValue = false});

  factory SafeMap.fromJson(dynamic value, {Map<String, dynamic>? defaultValue}) {
    if (value == null) {
      if (defaultValue != null) {
        return SafeMap(safeValue: defaultValue);
      } else {
        return const SafeMap(safeValue: {});
      }
    }
    if (value is Map) {
      try {
        Map<String, dynamic> temp = Map<String, dynamic>.from(value);
        return SafeMap(safeValue: temp);
      } catch (e) {
        return const SafeMap(isUnexpectedValue: true);
      }
    }
    if (value is Map<String, dynamic>) return SafeMap(safeValue: value);
    if (value is String) {
      if (value.isEmpty) {
        return const SafeMap(safeValue: {});
      } else {
        try {
          return SafeMap(safeValue: json.decode(value));
        } catch (_) {
          return const SafeMap(isUnexpectedValue: true);
        }
      }
    }
    return const SafeMap(isUnexpectedValue: true);
  }

  SafeMap copyWith({Map<String, dynamic>? safeValue, bool? isUnexpectedValue}) {
    return SafeMap(
        safeValue: safeValue ?? this.safeValue,
        isUnexpectedValue: isUnexpectedValue ?? this.isUnexpectedValue);
  }

  @override
  String toString() {
    return 'SafeMap{safeValue: $safeValue, isUnexpectedValue: $isUnexpectedValue}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SafeMap &&
          runtimeType == other.runtimeType &&
          safeValue == other.safeValue &&
          isUnexpectedValue == other.isUnexpectedValue;

  @override
  int get hashCode => safeValue.hashCode ^ isUnexpectedValue.hashCode;
}

/// [ListOrMap] parse json of map of list [list<dynamic>] we use it when we don't know the return type is map or list
class SafeListOrMap {
  final List<dynamic>? safeValue;
  final bool isUnexpectedValue;

  const SafeListOrMap({this.safeValue, this.isUnexpectedValue = false});

  factory SafeListOrMap.fromJson(dynamic value, {dynamic defaultValue}) {
    if (value == null) {
      if (defaultValue != null) {
        if (defaultValue is List && defaultValue.isNotEmpty) {
          return SafeListOrMap(safeValue: defaultValue);
        } else if (defaultValue is! List) {
          return SafeListOrMap(safeValue: [defaultValue]);
        }
      }
      return const SafeListOrMap(safeValue: []);
    }
    if (value is List<dynamic>) {
      return SafeListOrMap(safeValue: value);
    } else if (value is Map<String, dynamic>) {
      return SafeListOrMap(safeValue: [value]);
    } else {
      return const SafeListOrMap(isUnexpectedValue: true);
    }
  }

  @override
  String toString() {
    return 'SafeListOrMap{safeValue: $safeValue}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SafeListOrMap && runtimeType == other.runtimeType && safeValue == other.safeValue;

  @override
  int get hashCode => safeValue.hashCode;
}

/// [fromJson] list or map
SafeListOrMap safeListOrMapFromJson(dynamic value) {
  return SafeListOrMap.fromJson(value);
}

/// [fromJson] list or map
Map<String, dynamic>? safeListOrMapToJson(SafeListOrMap? field) {
  if (field == null) {
    return null;
  }
  return {"value": field.safeValue};
}

/// [fromJson] int or double
SafeNum safeNumFromJson(dynamic value) {
  return SafeNum.fromJson(value);
}

/// [ToJson] int or double
Map<String, dynamic>? safeNumToJson(SafeNum? field) {
  if (field == null) {
    return null;
  }
  return {"value": field.safeValue};
}

/// [fromJson] bool
SafeBool safeBoolFromJson(dynamic value) {
  return SafeBool.fromJson(value);
}

/// [ToJson] bool
Map<String, dynamic>? safeBoolToJson(SafeBool? field) {
  if (field == null) {
    return null;
  }
  return {"value": field.safeValue};
}

/// [fromJson] string
SafeString safeStringFromJson(dynamic value) {
  return SafeString.fromJson(value);
}

/// [ToJson] string
Map<String, dynamic>? safeStringToJson(SafeString? field) {
  if (field == null) {
    return null;
  }
  return {"value": field.safeValue};
}
