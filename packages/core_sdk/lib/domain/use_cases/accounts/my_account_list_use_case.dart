import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:core_sdk/domain/models/models.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../networks/accounts_network.dart';

class MyAccountListUseCase {
  AccountsNetwork get network => AuthSdkGetIt.shared.get();

  MyAccountListUseCase();

  Future<Either<FailureModel, List<UserAccountModel>>> call() async {
    return network.getMyAccountList();
  }
}
