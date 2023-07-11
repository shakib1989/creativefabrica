// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_statistics_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PortfolioStatisticsRequest _$PortfolioStatisticsRequestFromJson(
        Map<String, dynamic> json) =>
    PortfolioStatisticsRequest(
      accountNumber: json['accountNumber'] as String,
      statisticsType: json['statisticsType'] as String,
    );

Map<String, dynamic> _$PortfolioStatisticsRequestToJson(
        PortfolioStatisticsRequest instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'statisticsType': instance.statisticsType,
    };

PortfolioStatisticsResponse _$PortfolioStatisticsResponseFromJson(
        Map<String, dynamic> json) =>
    PortfolioStatisticsResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              PortfolioStatisticsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PortfolioStatisticsResponseToJson(
        PortfolioStatisticsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
