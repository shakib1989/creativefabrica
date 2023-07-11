
import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../networks/auth_network.dart';
import '../../repositories/auth_repository.dart';
import 'logout_use_case.dart';

class AutoLoginUseCase {
  AuthNetwork get network => AuthSdkGetIt.shared.get();
  AuthRepository get repository => AuthSdkGetIt.shared.get();

  AutoLoginUseCase();

  Future<Either<FailureModel, bool>> call() async {
    final result = await network.isSessionValid();
    return await result.fold((failure) async => Left(failure), (status) async {
      print('Logout Status: $status');
      if (!status) {
        await LogoutUseCase().call();
      }
      return Right(status);
    });
  }
}
