import '../../default_imports.dart';

part 'account_balance_api.g.dart';
part 'account_balance_request.dart';
part 'account_balance_response.dart';

class AccountBalanceApi
    extends BaseApiImpl<AccountBalanceRequest, AccountBalanceResponse>
    implements BaseApi<List<UserAccountModel>> {
  AccountBalanceApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: UserApiPaths.myAccounts,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, AccountBalanceModel>> call(
      String accountNumber) async {
    final result = await apiCall(AccountBalanceRequest(
      accountNumber: accountNumber,
    ));
    return result.fold((failure) {
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(data.data);
    });
  }

  @override
  AccountBalanceResponse apiResponseFromJson(Map<String, dynamic> json) =>
      AccountBalanceResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, AccountBalanceResponse>> mock(
      AccountBalanceRequest request,
  ) async {
    return Right(MockAccountsResponse().accountBalance(request));
  }
}
