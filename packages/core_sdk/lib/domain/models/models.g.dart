// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountBalanceModel _$AccountBalanceModelFromJson(Map<String, dynamic> json) =>
    AccountBalanceModel(
      cash: json['cash'] as int,
      margin: json['margin'] as int,
      fundsInTransit: json['fundsInTransit'] as int,
      currency: json['currency'] as String,
      currencySymbol: json['currencySymbol'] as String,
      currencyDecimal: json['currencyDecimal'] as int,
    );

Map<String, dynamic> _$AccountBalanceModelToJson(
        AccountBalanceModel instance) =>
    <String, dynamic>{
      'cash': instance.cash,
      'margin': instance.margin,
      'fundsInTransit': instance.fundsInTransit,
      'currency': instance.currency,
      'currencySymbol': instance.currencySymbol,
      'currencyDecimal': instance.currencyDecimal,
    };

DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) =>
    DeviceInfoModel(
      deviceType: json['deviceType'] as String,
      deviceData: json['deviceData'] as String,
    );

Map<String, dynamic> _$DeviceInfoModelToJson(DeviceInfoModel instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'deviceData': instance.deviceData,
    };

AppAuthModel _$AppAuthModelFromJson(Map<String, dynamic> json) => AppAuthModel(
      token: json['token'] as String? ?? '',
      device:
          AppDeviceInfoModel.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppAuthModelToJson(AppAuthModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'device': instance.device.toJson(),
    };

AppDeviceInfoModel _$AppDeviceInfoModelFromJson(Map<String, dynamic> json) =>
    AppDeviceInfoModel(
      deviceId: json['deviceId'] as String,
      deviceType: json['deviceType'] as String,
      deviceData: json['deviceData'] as String,
      fingerprint: json['fingerprint'] as String,
    );

Map<String, dynamic> _$AppDeviceInfoModelToJson(AppDeviceInfoModel instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'deviceType': instance.deviceType,
      'deviceData': instance.deviceData,
      'fingerprint': instance.fingerprint,
    };

DeviceRegisterResponseModel _$DeviceRegisterResponseModelFromJson(
        Map<String, dynamic> json) =>
    DeviceRegisterResponseModel(
      id: json['id'] as String,
      fingerprint: json['fingerprint'] as String,
    );

Map<String, dynamic> _$DeviceRegisterResponseModelToJson(
        DeviceRegisterResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fingerprint': instance.fingerprint,
    };

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: json['id'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
    };

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    UserProfileModel(
      userId: json['userId'] as int,
      fullName: json['fullName'] as String,
      dob: DateTimeUtils.fromJsonOptional(json['dob'] as int?),
      gender: $enumDecodeNullable(_$GenderTypeEnumMap, json['gender']),
    );

Map<String, dynamic> _$UserProfileModelToJson(UserProfileModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullName': instance.fullName,
      'gender': _$GenderTypeEnumMap[instance.gender],
      'dob': DateTimeUtils.toJsonOptional(instance.dob),
    };

const _$GenderTypeEnumMap = {
  GenderType.male: 'male',
  GenderType.female: 'female',
};

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      alias: json['alias'] as String,
      handle: json['handle'] as String,
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'handle': instance.handle,
      'image': instance.image.toJson(),
    };

PortfolioStatisticsModel _$PortfolioStatisticsModelFromJson(
        Map<String, dynamic> json) =>
    PortfolioStatisticsModel(
      fromAmount: json['fromAmount'] as int,
      toAmount: json['toAmount'] as int,
      currencyDecimal: json['currencyDecimal'] as int,
      currency: json['currency'] as String,
      fromTimestamp: DateTimeUtils.fromJson(json['fromTimestamp'] as int),
      toTimestamp: DateTimeUtils.fromJson(json['toTimestamp'] as int),
    );

Map<String, dynamic> _$PortfolioStatisticsModelToJson(
        PortfolioStatisticsModel instance) =>
    <String, dynamic>{
      'fromAmount': instance.fromAmount,
      'toAmount': instance.toAmount,
      'currencyDecimal': instance.currencyDecimal,
      'currency': instance.currency,
      'fromTimestamp': DateTimeUtils.toJson(instance.fromTimestamp),
      'toTimestamp': DateTimeUtils.toJson(instance.toTimestamp),
    };

PhoneNumberModel _$PhoneNumberModelFromJson(Map<String, dynamic> json) =>
    PhoneNumberModel(
      countryId: json['countryId'] as String,
      dialCode: json['dialCode'] as String,
      number: json['number'] as String,
    );

Map<String, dynamic> _$PhoneNumberModelToJson(PhoneNumberModel instance) =>
    <String, dynamic>{
      'countryId': instance.countryId,
      'dialCode': instance.dialCode,
      'number': instance.number,
    };

UserAccountModel _$UserAccountModelFromJson(Map<String, dynamic> json) =>
    UserAccountModel(
      accountNumber: json['accountNumber'] as String,
      accountType: json['accountType'] as String,
      productType: json['productType'] as String,
    );

Map<String, dynamic> _$UserAccountModelToJson(UserAccountModel instance) =>
    <String, dynamic>{
      'accountNumber': instance.accountNumber,
      'accountType': instance.accountType,
      'productType': instance.productType,
    };

WatchListModel _$WatchListModelFromJson(Map<String, dynamic> json) =>
    WatchListModel(
      id: json['id'] as String,
      name: json['name'] as String,
      items: (json['items'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$WatchListModelToJson(WatchListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'items': instance.items,
    };
