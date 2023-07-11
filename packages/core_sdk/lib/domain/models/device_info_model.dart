part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class DeviceInfoModel {
  final String deviceType;
  final String deviceData;
  DeviceInfoModel({
    required this.deviceType,
    required this.deviceData,
  });

  factory DeviceInfoModel.empty() => DeviceInfoModel(
        deviceData: '',
        deviceType: '',
      );

  factory DeviceInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceInfoModelToJson(this);
}
