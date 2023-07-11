part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class DeviceRegisterResponseModel {
  final String id;
  final String fingerprint;
  DeviceRegisterResponseModel({
    required this.id,
    required this.fingerprint,
  });

  factory DeviceRegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceRegisterResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceRegisterResponseModelToJson(this);
}
