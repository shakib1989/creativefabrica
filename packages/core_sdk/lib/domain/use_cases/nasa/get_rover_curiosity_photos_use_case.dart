import 'package:core_sdk/domain/networks/nasa_network.dart';
import 'package:core_sdk/domain/repositories/rover_photos_repository.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../nasa_get_it.dart';

class GetRoverCuriosityPhotosUseCase {
  NasaNetwork get network => NasaSdkGetIt.shared.get();

  RoverPhotosRepository get repo => NasaSdkGetIt.shared.get();

  GetRoverCuriosityPhotosUseCase();

  Future<Either<FailureModel, List<String>>> call() async {
    final result = await network.getRoverImages();
    if (result.isRight()) {
      await updateRepository(result.getOrElse(() => []));
    }
    return result;
  }

  Future<void> updateRepository(List<String> list) async {
    await repo.clear();
    await repo.saveAll(list);
  }
}
