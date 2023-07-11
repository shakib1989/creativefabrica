part of 'firebase_login_api.dart';

@JsonSerializable(explicitToJson: true)
class FirebaseLoginResponse
    extends BaseApiResponse {
  final FirebaseLoginResponseModel data;
  FirebaseLoginResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory FirebaseLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$FirebaseLoginResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FirebaseLoginResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FirebaseLoginResponseModel extends BaseJson {
  String token;
  FirebaseLoginResponseModel({
    required this.token,
  });

  @override
  factory FirebaseLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseLoginResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FirebaseLoginResponseModelToJson(this);
}
