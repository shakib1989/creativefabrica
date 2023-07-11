part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class AppAuthModel {
  String token;
  final AppDeviceInfoModel device;
  AppAuthModel({
    this.token = '',
    required this.device,
  });


  factory AppAuthModel.empty() => AppAuthModel(device: AppDeviceInfoModel.empty());

  factory AppAuthModel.fromJson(Map<String, dynamic> json) =>
      _$AppAuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppAuthModelToJson(this);
}
