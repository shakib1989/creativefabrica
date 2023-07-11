enum PortfolioStatisticsType {
  day,
  week,
  month,
  sixMonths,
  year,
  fiveYears,
  unknown,
}

abstract class PortfolioStatisticsTypeConverter {
  static final Map<String, PortfolioStatisticsType> _map = {
    'day': PortfolioStatisticsType.day,
    'week': PortfolioStatisticsType.week,
    'month': PortfolioStatisticsType.month,
    'sixMonths': PortfolioStatisticsType.sixMonths,
    'year': PortfolioStatisticsType.year,
    'fiveYears': PortfolioStatisticsType.fiveYears,
    'unknown': PortfolioStatisticsType.unknown,
  };

  static List<String> get keys => _map.keys.toList();

  static PortfolioStatisticsType fromString(String value) {
    if (_map.containsKey(value)) {
      return _map[value]!;
    }
    return PortfolioStatisticsType.unknown;
  }

  static String fromValue(PortfolioStatisticsType value) {
    for (String key in _map.keys) {
      if (_map[key] == value) {
        return key;
      }
    }
    return 'Unknown';
  }
}