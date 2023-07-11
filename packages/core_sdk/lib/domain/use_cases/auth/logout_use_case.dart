import 'package:dartz/dartz.dart';

import '../../../src/models/models.dart';
import '../../auth_get_it.dart';
import '../../models/exports.dart';
import '../../networks/auth_network.dart';
import '../../repositories/auth_repository.dart';

class LogoutUseCase {
  AuthNetwork get network => AuthSdkGetIt.shared.get();
  AuthRepository get repository => AuthSdkGetIt.shared.get();

  LogoutUseCase();

  Future<Either<FailureModel, EmptyModel>> call() async {
    final resultFuture = network.logout();
    final model = repository.getAppAuthModel();
    await repository.clear();
    await repository.setAppAuthModel(AppAuthModel(device: model.device));
    await resultFuture;
    return Right(EmptyModel());
  }
}
