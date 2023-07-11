part of 'mock_accounts_responses.dart';

extension MockUserAccountsResponse on MockAccountsResponse {
  MyAccountsResponse myAccounts() {
    return MyAccountsResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: [
        UserAccountModel(
          accountNumber: '100100 781 888 19092 90',
          accountType: 'Individual',
          productType: 'B/O Account',
        ),
        UserAccountModel(
          accountNumber: '100100 781 888 19092 91',
          accountType: 'Individual',
          productType: 'B/O Account',
        ),
      ],
    );
  }
}
