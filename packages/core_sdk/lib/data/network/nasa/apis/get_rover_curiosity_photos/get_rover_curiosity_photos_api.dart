import '../../default_imports.dart';

part 'get_rover_curiosity_photos_api.g.dart';
part 'get_rover_curiosity_photos_request.dart';
part 'get_rover_curiosity_photos_response.dart';

class GetRoverCuriosityPhotosApi extends BaseApiImpl<
    GetRoverCuriosityPhotosRequest,
    GetRoverCuriosityPhotosResponse> implements BaseApi<List<String>> {
  final NetworkConfig networkConfig;
  GetRoverCuriosityPhotosApi(this.networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: NasaApiPaths.marsRoverCuriosityPhotos,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<String>>> call(int sol) async {
    final result = await apiCall(
      GetRoverCuriosityPhotosRequest(
        sol: sol,
        apiKey: '',
      ),
    );
    return result.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right([]);
    });
  }

  @override
  GetRoverCuriosityPhotosResponse apiResponseFromJson(
          Map<String, dynamic> json) =>
      GetRoverCuriosityPhotosResponse.fromJson(json);

  @override
  Future<Either<FailureModel, GetRoverCuriosityPhotosResponse>> mock(
    GetRoverCuriosityPhotosRequest request,
  ) async {
    return Right(MockAccountsResponse().accountBalance(request));
  }
}
