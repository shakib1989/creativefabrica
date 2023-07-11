import 'package:core_sdk/data/network/accounts/apis/notifications/notification_list_api.dart';
import 'package:core_sdk/data/network/auth/default_imports.dart';
import 'package:core_sdk/domain/enums/portfolio_statistics_type.dart';
import 'package:core_sdk/domain/networks/accounts_network.dart';

import 'apis/account_balance/account_balance_api.dart';
import 'apis/my_accounts/my_accounts_api.dart';
import 'apis/portfolio_statistics/portfolio_statistics_api.dart';
import 'apis/watch_list/watch_list_api.dart';

class AccountsNetworkImpl extends AccountsNetwork {
  final NetworkConfig networkConfig;

  AccountsNetworkImpl(this.networkConfig);

  @override
  Future<Either<FailureModel, List<UserAccountModel>>> getMyAccountList() =>
      MyAccountsApi(networkConfig).call();

  @override
  Future<Either<FailureModel, AccountBalanceModel>> getAccountBalance(
    String accountNumber,
  ) =>
      AccountBalanceApi(networkConfig).call(accountNumber);

  @override
  Future<Either<FailureModel, List<PortfolioStatisticsModel>>>
      portfolioStatistics(
    String accountNumber,
    PortfolioStatisticsType statisticsType,
  ) =>
          PortfolioStatisticsApi(networkConfig)
              .call(accountNumber, statisticsType);

  @override
  Future<Either<FailureModel, List<NotificationModel>>> notificationList() =>
      NotificationListApi(networkConfig).call();

  @override
  Future<Either<FailureModel, List<WatchListModel>>> watchList() =>
      WatchListApi(networkConfig).call();
}
