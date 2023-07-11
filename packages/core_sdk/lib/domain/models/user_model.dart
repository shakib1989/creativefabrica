part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  String id;
  String alias;
  String handle;
  ImageModel image;
  UserModel({
    required this.id,
    required this.alias,
    required this.handle,
    required this.image,
  });

  factory UserModel.empty() => UserModel(
        id: '',
        alias: '',
        handle: '',
        image: ImageModel.empty(),
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
