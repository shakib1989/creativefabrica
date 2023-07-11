// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_accounts_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAccountsResponse _$MyAccountsResponseFromJson(Map<String, dynamic> json) =>
    MyAccountsResponse(
      statusCode: json['statusCode'] as int,
      meta: BaseMetaData.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => UserAccountModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyAccountsResponseToJson(MyAccountsResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'meta': instance.meta.toJson(),
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
