part of 'notification_list_api.dart';

@JsonSerializable(explicitToJson: true)
class NotificationListResponse extends BaseApiResponse {
  final List<NotificationModel> data;
  NotificationListResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory NotificationListResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationListResponseToJson(this);
}
