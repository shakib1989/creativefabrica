import '../../default_imports.dart';

part 'my_accounts_api.g.dart';
part 'my_accounts_response.dart';

class MyAccountsApi extends BaseApiImpl<EmptyRequest, MyAccountsResponse>
    implements BaseApi<List<UserAccountModel>> {
  MyAccountsApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: UserApiPaths.myAccounts,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<UserAccountModel>>> call() async {
    final result = await apiCall(EmptyRequest());
    return result.fold((failure) {
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(data.data);
    });
  }

  @override
  MyAccountsResponse apiResponseFromJson(Map<String, dynamic> json) =>
      MyAccountsResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, MyAccountsResponse>> mock(
    EmptyRequest request,
  ) async {
    return Right(MockAccountsResponse().myAccounts());
  }
}
