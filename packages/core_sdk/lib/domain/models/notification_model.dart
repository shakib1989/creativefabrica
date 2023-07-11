part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class NotificationModel {
  String id;
  String message;

  NotificationModel({
    required this.id,
    required this.message,
  });

  factory NotificationModel.empty() => NotificationModel(
        id: '',
        message: '',
      );

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
