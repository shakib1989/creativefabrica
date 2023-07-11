part of 'mock_accounts_responses.dart';

extension MockNotificationListResponse on MockAccountsResponse {
  NotificationListResponse notifications() {
    return NotificationListResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: [
        NotificationModel(
          id: '1',
          message:
              'Lorem ipsum dolor sit amet consectetur. Venenatis sodales cras lobortis porta .',
        ),
        NotificationModel(
          id: '2',
          message:
              'Vitae at nisi amet at adipiscing ullamcorper velit rhoncus diam.',
        ),
      ],
    );
  }
}
