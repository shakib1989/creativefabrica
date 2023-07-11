// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_login_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirebaseLoginRequest _$FirebaseLoginRequestFromJson(
        Map<String, dynamic> json) =>
    FirebaseLoginRequest(
      idToken: json['idToken'] as String,
    );

Map<String, dynamic> _$FirebaseLoginRequestToJson(
        FirebaseLoginRequest instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
    };

FirebaseLoginResponse _$FirebaseLoginResponseFromJson(
        Map<String, dynamic> json) =>
    FirebaseLoginResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: FirebaseLoginResponseModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FirebaseLoginResponseToJson(
        FirebaseLoginResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.toJson(),
    };

FirebaseLoginResponseModel _$FirebaseLoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    FirebaseLoginResponseModel(
      token: json['token'] as String,
    );

Map<String, dynamic> _$FirebaseLoginResponseModelToJson(
        FirebaseLoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
