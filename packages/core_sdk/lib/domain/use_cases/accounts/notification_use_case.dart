import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:core_sdk/domain/enums/exports.dart';
import 'package:core_sdk/domain/models/models.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../networks/accounts_network.dart';

class NotificationListUseCase {
  AccountsNetwork get network => AuthSdkGetIt.shared.get();

  NotificationListUseCase();

  Future<Either<FailureModel, List<NotificationModel>>> call() async {
    return network.notificationList();
  }
}
