part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class AccountBalanceModel {
  int cash;
  int margin;
  int fundsInTransit;
  String currency;
  String currencySymbol;
  int currencyDecimal;

  AccountBalanceModel({
    required this.cash,
    required this.margin,
    required this.fundsInTransit,
    required this.currency,
    required this.currencySymbol,
    required this.currencyDecimal,
  });

  factory AccountBalanceModel.empty() => AccountBalanceModel(
        cash: 0,
        margin: 0,
        fundsInTransit: 0,
        currency: '',
        currencySymbol: '',
        currencyDecimal: 0,
      );

  factory AccountBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$AccountBalanceModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountBalanceModelToJson(this);
}
