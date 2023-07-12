import 'package:core_sdk/domain/nasa_get_it.dart';
import 'package:core_sdk/domain/repositories/rover_photos_repository.dart';

import 'collections/rover_photo_dao.dart';

class RoverPhotosRepositoryImpl implements RoverPhotosRepository {
  RoverPhotoDao get dao => NasaSdkGetIt.shared.get<RoverPhotoDao>();

  @override
  Future<void> clear() async {
    await dao.clear();
  }

  @override
  Future<List<String>> getAll() async {
    return await dao.getAll();
  }

  @override
  Future<void> saveAll(List<String> list) async {
    await dao.upsertAll(list);
  }
}
