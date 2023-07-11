part of 'models.dart';

@JsonSerializable(explicitToJson: true)
class PortfolioStatisticsModel {
  int fromAmount;
  int toAmount;
  int currencyDecimal;
  String currency;
  @JsonKey(
    fromJson: DateTimeUtils.fromJson,
    toJson: DateTimeUtils.toJson,
  )
  DateTime fromTimestamp;
  @JsonKey(
    fromJson: DateTimeUtils.fromJson,
    toJson: DateTimeUtils.toJson,
  )
  DateTime toTimestamp;

  PortfolioStatisticsModel({
    required this.fromAmount,
    required this.toAmount,
    required this.currencyDecimal,
    required this.currency,
    required this.fromTimestamp,
    required this.toTimestamp,
  });

  factory PortfolioStatisticsModel.empty() => PortfolioStatisticsModel(
        fromAmount: 0,
        toAmount: 0,
        currencyDecimal: 0,
        currency: '',
        fromTimestamp: DateTime.now(),
        toTimestamp: DateTime.now(),
      );

  factory PortfolioStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStatisticsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PortfolioStatisticsModelToJson(this);
}
