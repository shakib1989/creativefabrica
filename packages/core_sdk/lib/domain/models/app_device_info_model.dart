part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class AppDeviceInfoModel {
  final String deviceId;
  final String deviceType;
  final String deviceData;
  final String fingerprint;
  AppDeviceInfoModel({
    required this.deviceId,
    required this.deviceType,
    required this.deviceData,
    required this.fingerprint,
  });

  factory AppDeviceInfoModel.empty() => AppDeviceInfoModel(
        deviceId: '',
        deviceType: 'n/a',
        deviceData: '{}',
        fingerprint: '',
      );

  factory AppDeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AppDeviceInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppDeviceInfoModelToJson(this);
}
