import '../../default_imports.dart';

part 'watch_list_api.g.dart';
part 'watch_list_response.dart';

class WatchListApi extends BaseApiImpl<EmptyRequest, WatchListResponse>
    implements BaseApi<List<WatchListModel>> {
  WatchListApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: UserApiPaths.myAccounts,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<WatchListModel>>> call() async {
    final result = await apiCall(EmptyRequest());
    return result.fold((failure) {
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(data.data);
    });
  }

  @override
  WatchListResponse apiResponseFromJson(Map<String, dynamic> json) =>
      WatchListResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, WatchListResponse>> mock(
    EmptyRequest request,
  ) async {
    return Right(MockAccountsResponse().watchList());
  }
}
