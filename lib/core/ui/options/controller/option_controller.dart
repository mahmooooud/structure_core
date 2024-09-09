import 'package:flutter/material.dart';

class OptionController<T> extends ChangeNotifier {
  T? _selectedValue;

  T? _tempValue;

  bool _disposed = false;

  T? get selectedValue => _selectedValue;

  T? get tempValue => _tempValue;

  set selectedValue(T? value) {
    _selectedValue = value;
    _tempValue = value;
    notifyListeners();
  }

  set tempValue(T? value) {
    _tempValue = value;
    notifyListeners();
  }

  OptionController({T? defaultValue}) : _selectedValue = defaultValue;

  void clear() {
    selectedValue = null;
    _tempValue = null;
    notifyListeners();
  }

  @override
  void dispose() {
    if (!_disposed) {
      _disposed = true;
      super.dispose();
    }
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}
