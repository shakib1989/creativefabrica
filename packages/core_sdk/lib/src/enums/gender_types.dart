enum GenderType {
  male,
  female,
}

abstract class GenderTypeConverter {
  static final Map<String, GenderType> _map = {
    'Male': GenderType.male,
    'Female': GenderType.female,
  };

  static List<String> get keys => _map.keys.toList();

  static GenderType fromString(String value) {
    if (_map.containsKey(value)) {
      return _map[value]!;
    }
    return GenderType.male;
  }

  static String fromValue(GenderType value) {
    for (String key in _map.keys) {
      if (_map[key] == value) {
        return key;
      }
    }
    return 'Male';
  }
}
