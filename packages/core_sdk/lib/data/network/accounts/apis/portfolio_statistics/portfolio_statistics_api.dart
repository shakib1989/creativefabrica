import 'package:core_sdk/domain/enums/exports.dart';

import '../../default_imports.dart';
import '../account_balance/account_balance_api.dart';

part 'portfolio_statistics_api.g.dart';
part 'portfolio_statistics_request.dart';
part 'portfolio_statistics_response.dart';

class PortfolioStatisticsApi
    extends BaseApiImpl<PortfolioStatisticsRequest, PortfolioStatisticsResponse>
    implements BaseApi<List<PortfolioStatisticsModel>> {
  PortfolioStatisticsApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: UserApiPaths.myAccounts,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  Future<Either<FailureModel, List<PortfolioStatisticsModel>>> call(
    String accountNumber,
    PortfolioStatisticsType statisticsType,
  ) async {
    final result = await apiCall(PortfolioStatisticsRequest(
      accountNumber: accountNumber,
      statisticsType:
          PortfolioStatisticsTypeConverter.fromValue(statisticsType),
    ));
    return result.fold((failure) {
      return Left(failure.toFailureModel());
    }, (data) {
      return Right(data.data);
    });
  }

  @override
  PortfolioStatisticsResponse apiResponseFromJson(Map<String, dynamic> json) =>
      PortfolioStatisticsResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, PortfolioStatisticsResponse>> mock(
      PortfolioStatisticsRequest request,
  ) async {
    return Right(MockAccountsResponse().portfolioStatistics(request));
  }
}
