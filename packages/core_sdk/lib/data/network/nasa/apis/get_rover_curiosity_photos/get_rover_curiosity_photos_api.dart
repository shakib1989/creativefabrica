import 'dart:convert';

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
          requestType: ApiRequestType.get,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<String>>> call() async {
    final result = await apiCall(
      GetRoverCuriosityPhotosRequest(
        sol: 1000.toString(),
        apiKey: networkConfig.apiKey,
      ),
    );
    return result.fold((failure) {
      return Left(failure);
    }, (data) {
      return Right(_getImageListFromResponse(data));
    });
  }

  List<String> _getImageListFromResponse(
    GetRoverCuriosityPhotosResponse response,
  ) {
    final list = <String>[];
    for (var data in response.photos) {
      list.add(data.imageUrl);
    }
    return list;
  }

  @override
  GetRoverCuriosityPhotosResponse apiResponseFromJson(
      Map<String, dynamic> json) {
    print('apiResponseFromJson');
    print(jsonEncode(json));
    return GetRoverCuriosityPhotosResponse.fromJson(json);
  }

  @override
  Future<Either<FailureModel, GetRoverCuriosityPhotosResponse>> mock(
    GetRoverCuriosityPhotosRequest request,
  ) async {
    return Right(MockNasaResponse().roverPhotos());
  }
}
