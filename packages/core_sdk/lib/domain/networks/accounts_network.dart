import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../enums/portfolio_statistics_type.dart';
import '../models/models.dart';

abstract class AccountsNetwork {
  Future<Either<FailureModel, List<UserAccountModel>>> getMyAccountList();

  Future<Either<FailureModel, AccountBalanceModel>> getAccountBalance(
    String accountNumber,
  );

  Future<Either<FailureModel, List<PortfolioStatisticsModel>>>
      portfolioStatistics(
    String accountNumber,
    PortfolioStatisticsType statisticsType,
  );

  Future<Either<FailureModel, List<NotificationModel>>> notificationList();

  Future<Either<FailureModel, List<WatchListModel>>> watchList();
}
