part of 'get_rover_curiosity_photos_api.dart';

@JsonSerializable(explicitToJson: true)
class GetRoverCuriosityPhotosRequest extends BaseJson {
  final String sol;
  @JsonKey(name: 'api_key')
  final String apiKey;

  GetRoverCuriosityPhotosRequest({
    required this.sol,
    required this.apiKey,
  });

  @override
  factory GetRoverCuriosityPhotosRequest.fromJson(Map<String, dynamic> json) =>
      _$GetRoverCuriosityPhotosRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetRoverCuriosityPhotosRequestToJson(this);
}
