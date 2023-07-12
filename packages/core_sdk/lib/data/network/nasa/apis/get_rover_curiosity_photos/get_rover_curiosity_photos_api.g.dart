// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rover_curiosity_photos_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoverCuriosityPhotosRequest _$GetRoverCuriosityPhotosRequestFromJson(
        Map<String, dynamic> json) =>
    GetRoverCuriosityPhotosRequest(
      sol: json['sol'] as String,
      apiKey: json['api_key'] as String,
    );

Map<String, dynamic> _$GetRoverCuriosityPhotosRequestToJson(
        GetRoverCuriosityPhotosRequest instance) =>
    <String, dynamic>{
      'sol': instance.sol,
      'api_key': instance.apiKey,
    };

GetRoverCuriosityPhotosResponse _$GetRoverCuriosityPhotosResponseFromJson(
        Map<String, dynamic> json) =>
    GetRoverCuriosityPhotosResponse(
      photos: (json['photos'] as List<dynamic>)
          .map((e) => RoverImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetRoverCuriosityPhotosResponseToJson(
        GetRoverCuriosityPhotosResponse instance) =>
    <String, dynamic>{
      'photos': instance.photos.map((e) => e.toJson()).toList(),
    };

RoverImageModel _$RoverImageModelFromJson(Map<String, dynamic> json) =>
    RoverImageModel(
      imageUrl: json['img_src'] as String? ?? '',
    );

Map<String, dynamic> _$RoverImageModelToJson(RoverImageModel instance) =>
    <String, dynamic>{
      'img_src': instance.imageUrl,
    };
