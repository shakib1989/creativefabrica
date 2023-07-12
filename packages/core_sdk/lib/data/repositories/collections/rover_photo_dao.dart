import 'package:core_sdk/data/network/default_imports.dart';
import 'package:core_sdk/src/repositories/base/exports.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

import '../entities/entities.dart';
import '../nasa_db.dart';

@singleton
class RoverPhotoDao
    extends BaseNoSqlRepositoryImpl<String, RoverPhotoEntity, String>
    implements BaseNoSqlRepository<String, String> {
  RoverPhotoDao() : super(NasaDB.shared.database.roverPhotos);

  @override
  Optional<RoverPhotoEntity> convertToEntity(String? model) {
    if (model == null) {
      return Optional.empty();
    }
    return Optional.of(RoverPhotoEntity(id: model));
  }

  @override
  Optional<String> convertToModel(RoverPhotoEntity? entity) {
    return Optional.of(entity.toString());
  }

  @override
  QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QAfterWhereClause> idEqual(
          QueryBuilder<RoverPhotoEntity, RoverPhotoEntity, QWhereClause>
              queryBuilder,
          String value) =>
      queryBuilder.idEqualTo(value);

  @override
  String idFromModel(String model) => model;
}
