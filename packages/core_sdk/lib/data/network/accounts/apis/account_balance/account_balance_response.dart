part of 'account_balance_api.dart';


@JsonSerializable(explicitToJson: true)
class AccountBalanceResponse
    extends BaseApiResponse {
  final AccountBalanceModel data;
  AccountBalanceResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory AccountBalanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountBalanceResponseToJson(this);
}
