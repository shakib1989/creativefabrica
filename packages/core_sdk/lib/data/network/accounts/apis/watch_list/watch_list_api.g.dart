// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_list_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WatchListResponse _$WatchListResponseFromJson(Map<String, dynamic> json) =>
    WatchListResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => WatchListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WatchListResponseToJson(WatchListResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
