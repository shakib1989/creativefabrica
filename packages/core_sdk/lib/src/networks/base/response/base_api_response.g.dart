// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseApiResponse _$BaseApiResponseFromJson(Map<String, dynamic> json) =>
    BaseApiResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseApiResponseToJson(BaseApiResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
    };
