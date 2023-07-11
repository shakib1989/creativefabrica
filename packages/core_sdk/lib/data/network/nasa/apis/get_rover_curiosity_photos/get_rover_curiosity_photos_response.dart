part of 'get_rover_curiosity_photos_api.dart';

@JsonSerializable(explicitToJson: true)
class GetRoverCuriosityPhotosResponse extends BaseJson {
  final List<RoverImageModel> photos;

  GetRoverCuriosityPhotosResponse({
    required this.photos,
  });

  @override
  factory GetRoverCuriosityPhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRoverCuriosityPhotosResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$GetRoverCuriosityPhotosResponseToJson(this);
}

@JsonSerializable()
class RoverImageModel {
  @JsonKey(name: 'img_src', defaultValue: '')
  final String imageUrl;

  RoverImageModel({required this.imageUrl});

  @override
  factory RoverImageModel.fromJson(Map<String, dynamic> json) =>
      _$RoverImageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RoverImageModelToJson(this);
}
