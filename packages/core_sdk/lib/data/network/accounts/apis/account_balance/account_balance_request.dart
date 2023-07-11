part of 'account_balance_api.dart';

@JsonSerializable(explicitToJson: true)
class AccountBalanceRequest
    extends BaseJson {
  final String  accountNumber;
  AccountBalanceRequest({
    required this.accountNumber,
  });

  @override
  factory AccountBalanceRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountBalanceRequestToJson(this);
}
