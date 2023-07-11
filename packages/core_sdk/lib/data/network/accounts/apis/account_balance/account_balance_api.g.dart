// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountBalanceRequest _$AccountBalanceRequestFromJson(
        Map<String, dynamic> json) =>
    AccountBalanceRequest(
      accountNumber: json['accountNumber'] as String,
    );

Map<String, dynamic> _$AccountBalanceRequestToJson(
        AccountBalanceRequest instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
    };

AccountBalanceResponse _$AccountBalanceResponseFromJson(
        Map<String, dynamic> json) =>
    AccountBalanceResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: AccountBalanceModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountBalanceResponseToJson(
        AccountBalanceResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.toJson(),
    };
