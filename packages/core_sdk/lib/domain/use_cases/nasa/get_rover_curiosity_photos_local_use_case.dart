import 'package:core_sdk/domain/repositories/rover_photos_repository.dart';

import '../../nasa_get_it.dart';

class GetRoverCuriosityPhotosLocalUseCase {
  RoverPhotosRepository get repo => NasaSdkGetIt.shared.get();

  GetRoverCuriosityPhotosLocalUseCase();

  Future<List<String>> call() async {
    return await repo.getAll();
  }
}
