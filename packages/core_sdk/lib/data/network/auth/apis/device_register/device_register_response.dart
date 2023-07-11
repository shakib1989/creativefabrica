part of 'device_register_api.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRegisterResponse
    extends BaseApiResponse {
  final DeviceRegisterResponseModel data;
  DeviceRegisterResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory DeviceRegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegisterResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceRegisterResponseToJson(this);
}
