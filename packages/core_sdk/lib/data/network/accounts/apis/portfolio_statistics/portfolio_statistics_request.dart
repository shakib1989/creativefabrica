part of 'portfolio_statistics_api.dart';

@JsonSerializable(explicitToJson: true)
class PortfolioStatisticsRequest
    extends BaseJson {
  final String  accountNumber;
  final String  statisticsType;
  PortfolioStatisticsRequest({
    required this.accountNumber,
    required this.statisticsType,
  });

  @override
  factory PortfolioStatisticsRequest.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStatisticsRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PortfolioStatisticsRequestToJson(this);
}
