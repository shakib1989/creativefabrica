import '../../default_imports.dart';

part 'device_register_api.g.dart';
part 'device_register_converter.dart';
part 'device_register_request.dart';
part 'device_register_response.dart';

class DeviceRegisterApi
    extends BaseApiImpl<DeviceRegisterRequest, DeviceRegisterResponse>
    implements BaseApi<String> {
  DeviceRegisterApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: AuthApiPaths.deviceRegister,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  @override
  Future<Either<FailureModel, DeviceRegisterResponseModel>> call(
      DeviceInfoModel data) async {
    final request = DeviceRegisterRequest(
      deviceType: data.deviceType,
      deviceData: data.deviceData,
    );
    final result = await apiCall(request);

    return result.fold((failure) => Left(failure.toFailureModel()), (data) {
      return Right(DeviceRegisterToInitModelConverter.convert(data));
    });
  }

  @override
  DeviceRegisterResponse apiResponseFromJson(Map<String, dynamic> json) =>
      DeviceRegisterResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, DeviceRegisterResponse>> mock(
      DeviceRegisterRequest request) async {
    return Right(MockAuthResponse().deviceRegister(request));
  }
}
