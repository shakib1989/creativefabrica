part of 'device_register_api.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRegisterRequest extends BaseJson{
  final String deviceType;
  final String deviceData;
  DeviceRegisterRequest({
    required this.deviceType,
    required this.deviceData,
  });

  @override
  factory DeviceRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegisterRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceRegisterRequestToJson(this);
}
