import 'package:core_sdk/data/network/auth/default_imports.dart';

class CheckSessionValidApi extends BaseApiImpl<EmptyRequest, BaseApiResponse>
    implements BaseApi<bool> {
  CheckSessionValidApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: AuthApiPaths.isSessionValid,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, bool>> call() async {
    final result = await apiCall(EmptyRequest());
    return result.fold((failure) {
      if (400 <= failure.statusCode && failure.statusCode < 500) {
        return const Right(false);
      }
      return Left(failure.toFailureModel());
    }, (data) {
      return const Right(true);
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
