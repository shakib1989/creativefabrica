// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_register_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceRegisterRequest _$DeviceRegisterRequestFromJson(
        Map<String, dynamic> json) =>
    DeviceRegisterRequest(
      deviceType: json['deviceType'] as String,
      deviceData: json['deviceData'] as String,
    );

Map<String, dynamic> _$DeviceRegisterRequestToJson(
        DeviceRegisterRequest instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'deviceData': instance.deviceData,
    };

DeviceRegisterResponse _$DeviceRegisterResponseFromJson(
        Map<String, dynamic> json) =>
    DeviceRegisterResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: DeviceRegisterResponseModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceRegisterResponseToJson(
        DeviceRegisterResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.toJson(),
    };
