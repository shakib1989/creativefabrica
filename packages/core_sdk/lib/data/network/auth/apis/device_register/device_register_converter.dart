part of 'device_register_api.dart';

class DeviceRegisterToInitModelConverter {
  static DeviceRegisterResponseModel convert(DeviceRegisterResponse response) {
    return response.data;
  }
}
