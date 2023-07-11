part of 'mock_accounts_responses.dart';

extension MockWatchListResponse on MockAccountsResponse {
  WatchListResponse watchList() {
    final list = <String>[];
    final list2 = <String>[];
    for (int i = 0; i < 15; i++) {
      if (i < 10) {
        list.add('Item ${i + 1}');
      }
      list2.add('Item ${i + 1}');
    }

    return WatchListResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: [
        WatchListModel(
          id: '1',
          name: 'My Priority List',
          items: list,
        ),
        WatchListModel(
          id: '2',
          name: 'Hot Items',
          items: list2,
        ),
      ],
    );
  }
}
