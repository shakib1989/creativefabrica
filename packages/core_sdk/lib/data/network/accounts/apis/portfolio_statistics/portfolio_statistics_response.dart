part of 'portfolio_statistics_api.dart';

@JsonSerializable(explicitToJson: true)
class PortfolioStatisticsResponse extends BaseApiResponse {
  final List<PortfolioStatisticsModel> data;
  PortfolioStatisticsResponse({
    required super.statusCode,
    required super.meta,
    required this.data,
  });

  @override
  factory PortfolioStatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStatisticsResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PortfolioStatisticsResponseToJson(this);
}
