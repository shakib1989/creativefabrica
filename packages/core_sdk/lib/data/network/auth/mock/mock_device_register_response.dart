part of 'mock_auth_responses.dart';

extension MockDeviceRegisterResponse on MockAuthResponse {
  DeviceRegisterResponse deviceRegister(DeviceRegisterRequest request) {
    return DeviceRegisterResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: DeviceRegisterResponseModel(
        id: '312321',
        fingerprint: 'asd',
      ),
    );
  }
}
