import 'package:ndf/core/common/extension/logger_extension.dart';

extension TextUtilsStringExtension on String? {
  /// Returns true if string is:
  /// - null
  /// - empty
  /// - whitespace string.
  /// - == "null"
  ///
  /// Characters considered "whitespace" are listed [here](https://stackoverflow.com/a/59826129/10830091).
  bool get isNullEmptyOrWhitespace {
    if (this == null)
      return true;
    else
      return this!.isEmpty || this!.trim().isEmpty || this == "null";
  }
}

extension ListUtilExtension on List? {
  /// Returns true if list is:
  /// - null
  /// - empty
  bool get isListNullEmpty {
    if (this == null)
      return true;
    else {
      return this == null || this!.isEmpty || this!.length == 0;
    }
  }
}

extension ListUpdate<T> on List<T> {
  List<T> update(int pos, T t) {
    List<T> list = [];
    try {
      list.add(t);
      replaceRange(pos, pos + 1, list);
      return this;
    } catch (e) {
      "unable to update list".logE;
      return this;
    }
  }
}
