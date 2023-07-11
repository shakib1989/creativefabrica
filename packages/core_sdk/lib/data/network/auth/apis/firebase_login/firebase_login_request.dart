part of 'firebase_login_api.dart';

@JsonSerializable(explicitToJson: true)
class FirebaseLoginRequest extends BaseJson {
  final String idToken;
  FirebaseLoginRequest({
    required this.idToken,
  });

  @override
  factory FirebaseLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$FirebaseLoginRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FirebaseLoginRequestToJson(this);
}
