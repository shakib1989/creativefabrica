part of 'mock_accounts_responses.dart';

extension MockPortfolioStatisticsResponse on MockAccountsResponse {
  PortfolioStatisticsResponse portfolioStatistics(
      PortfolioStatisticsRequest request) {
    final type =
        PortfolioStatisticsTypeConverter.fromString(request.statisticsType);

    return PortfolioStatisticsResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: getResponseList(type),
    );
  }

  List<PortfolioStatisticsModel> getResponseList(PortfolioStatisticsType type) {
    if (type == PortfolioStatisticsType.day) {
      return getDayList();
    } else if (type == PortfolioStatisticsType.week) {
      return getWeekList();
    } else if (type == PortfolioStatisticsType.month) {
      return getMonthList();
    } else if (type == PortfolioStatisticsType.sixMonths) {
      return getSixMonthList();
    } else if (type == PortfolioStatisticsType.year) {
      return getYearList();
    }
    return getFiveYearList();
  }

  List<PortfolioStatisticsModel> getFiveYearList() {
    const step = 1000 * 60 * 60 * 24 * 30;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: 365 * -5));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getYearList() {
    const step = 1000 * 60 * 60 * 24 * 15;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: 365 * -1));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getSixMonthList() {
    const step = 1000 * 60 * 60 * 24;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: 30 * -6));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getMonthList() {
    const step = 1000 * 60 * 60 * 12;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: 30 * -1));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getWeekList() {
    const step = 1000 * 60 * 60 * 6;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: -7));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getDayList() {
    const step = 1000 * 60 * 30;
    final now = DateTime.now();
    final min = now.minute - (now.minute % 30);
    final end = DateTime(now.year, now.month, now.day, now.hour, min, 0);
    final start = end.add(const Duration(days: -1));
    final startAmount = 40000;
    final list = getList(start, end, step, startAmount);
    return list;
  }

  List<PortfolioStatisticsModel> getList(
      DateTime start, DateTime end, int step, int startAmount) {
    final list = <PortfolioStatisticsModel>[];
    int last = startAmount;
    int next = startAmount;
    var lastTimestamp = start;
    var intValue = Random();
    for (int index = 0;
        lastTimestamp.millisecondsSinceEpoch <= end.millisecondsSinceEpoch;
        index++) {
      int next = last + intValue.nextInt(4000 * 2) - 4000;
      final nextTimestamp = lastTimestamp.add(Duration(milliseconds: step));
      list.add(PortfolioStatisticsModel(
        fromAmount: last,
        toAmount: next,
        currencyDecimal: 2,
        currency: 'BDT',
        fromTimestamp: lastTimestamp,
        toTimestamp: nextTimestamp,
      ));
      lastTimestamp = nextTimestamp;
      last = next;
    }
    return list;
  }
}
