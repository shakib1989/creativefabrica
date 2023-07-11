import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:core_sdk/domain/models/models.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../networks/accounts_network.dart';

class AccountBalanceUseCase {
  AccountsNetwork get network => AuthSdkGetIt.shared.get();

  AccountBalanceUseCase();

  Future<Either<FailureModel, AccountBalanceModel>> call(
      String accountNumber) async {
    return network.getAccountBalance(accountNumber);
  }
}
