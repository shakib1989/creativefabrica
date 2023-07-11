part of 'watch_list_api.dart';

@JsonSerializable(explicitToJson: true)
class WatchListResponse extends BaseApiResponse {
  final List<WatchListModel> data;
  WatchListResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory WatchListResponse.fromJson(Map<String, dynamic> json) =>
      _$WatchListResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WatchListResponseToJson(this);
}
