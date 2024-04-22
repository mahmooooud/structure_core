extension MapExtension on Map {
  dynamic removeNull(dynamic params) {
    if (params is Map) {
      var _map = {};
      params.forEach((key, value) {
        var _value = removeNull(value);
        if (_value != null) {
          _map[key] = _value;
        }
      });
      // comment this condition if you want empty dictionary
      if (_map.isNotEmpty) return _map;
    } else if (params is List) {
      var _list = [];
      for (var val in params) {
        var _value = removeNull(val);
        if (_value != null) {
          _list.add(_value);
        }
      }
      // comment this condition if you want empty list
      if (_list.isNotEmpty) return _list;
    } else if (params != null) {
      return params;
    }
    return null;
  }
}
