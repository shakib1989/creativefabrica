part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class ImageModel {
  final String id;
  final String fileType;
  final String mimeType;
  final String path;

  ImageModel({
    required this.id,
    required this.fileType,
    required this.mimeType,
    required this.path,
  });

  factory ImageModel.empty() => ImageModel(
        id: 'n/a',
        fileType: 'public',
        mimeType: '',
        path: 'public/default/noImageFound.png',
      );

  factory ImageModel.placeholder() => ImageModel(
        id: 'n/a',
        fileType: 'public',
        mimeType: '',
        path: 'public/default/noImageFound.png',
      );

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
