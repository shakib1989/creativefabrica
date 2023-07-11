import '../../default_imports.dart';

part 'notification_list_api.g.dart';
part 'notification_list_response.dart';

class NotificationListApi
    extends BaseApiImpl<EmptyRequest, NotificationListResponse>
    implements BaseApi<List<NotificationModel>> {
  NotificationListApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: UserApiPaths.myAccounts,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<NotificationModel>>> call() async {
    final result = await apiCall(EmptyRequest());
    return result.fold((failure) {
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(data.data);
    });
  }

  @override
  NotificationListResponse apiResponseFromJson(Map<String, dynamic> json) =>
      NotificationListResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, NotificationListResponse>> mock(
    EmptyRequest request,
  ) async {
    return Right(MockAccountsResponse().notifications());
  }
}
