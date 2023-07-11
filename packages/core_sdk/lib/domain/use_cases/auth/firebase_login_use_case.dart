import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../auth_get_it.dart';
import '../../networks/auth_network.dart';
import '../../repositories/auth_repository.dart';

class FirebaseLoginUseCase {
  AuthNetwork get network => AuthSdkGetIt.shared.get();
  AuthRepository get repository => AuthSdkGetIt.shared.get();

  FirebaseLoginUseCase();

  Future<Either<FailureModel, bool>> call(String idToken) async {
    final result = await network.firebaseLogin(idToken);
    return await result.fold((failure) async => Left(failure), (token) async {
      final appAuth = repository.getAppAuthModel();
      appAuth.token = token;
      await repository.setAppAuthModel(appAuth);
      return const Right(true);
    });
  }
}
