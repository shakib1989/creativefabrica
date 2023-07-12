import 'package:core_sdk/src/repositories/base/base_nosql_repository.dart';

import '../models/models.dart';

abstract class RoverPhotosRepository {

  Future<void> clear();
  Future<List<String>> getAll();
  Future<void> saveAll(List<String> list);

}
