import '../../default_imports.dart';

class LogoutApi extends BaseApiImpl<EmptyRequest, BaseApiResponse>
    implements BaseApi<EmptyModel> {
  LogoutApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: AuthApiPaths.logout,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, EmptyModel>> call() async {
    final result = await apiCall(EmptyRequest());
    return result.fold((failure) {
      if (400 <= failure.statusCode &&
          failure.statusCode < 500 &&
          failure.statusCode != 401) {
        return Right(EmptyModel());
      }
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(EmptyModel());
    });
  }

  @override
  BaseApiResponse apiResponseFromJson(Map<String, dynamic> json) =>
      BaseApiResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, BaseApiResponse>> mock(
    EmptyRequest request,
  ) async {
    return Right(BaseApiResponse.genericSuccess());
  }
}
