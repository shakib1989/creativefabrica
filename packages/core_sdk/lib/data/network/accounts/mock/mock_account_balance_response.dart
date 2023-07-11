part of 'mock_accounts_responses.dart';

extension MockAccountBalanceResponse on MockAccountsResponse {
  AccountBalanceResponse accountBalance(AccountBalanceRequest request) {
    return AccountBalanceResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: AccountBalanceModel(
        cash: 6000000,
        currency: 'BDT',
        currencySymbol: '৳',
        currencyDecimal: 2, margin: 0,
        fundsInTransit: 0,

      ),
    );
  }
}
