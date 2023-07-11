import 'package:core_sdk/config/env_modes.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/data/network/accounts/default_imports.dart';
import 'package:core_sdk/domain/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test Account Information Retrieve Test Cases', () {
    UserAccountModel? account;

    test('Test Get User Accounts', () async {
      await CoreSdk.initialize(mode: EnvMode.mock);
      final result = await MyAccountListUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockAccountsResponse().myAccounts().data.length,
      );
      account = result.getOrElse(() => [])[0];
    });

    test('Test Get User Account Balance', () async {
      final result = await AccountBalanceUseCase().call(account!.accountNumber);
      expect(result.isRight(), true);
    });

    test('Test Get User Account Portfolio Statistics Day', () async {
      final result = await PortfolioStatisticsUseCase()
          .call(account!.accountNumber, PortfolioStatisticsType.day);
      expect(result.isRight(), true);
    });

    test('Test Get User Account Portfolio Statistics Week', () async {
      final result = await PortfolioStatisticsUseCase()
          .call(account!.accountNumber, PortfolioStatisticsType.week);
      expect(result.isRight(), true);
    });
  });
}
