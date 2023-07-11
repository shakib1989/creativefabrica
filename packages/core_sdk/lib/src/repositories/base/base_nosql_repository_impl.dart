import 'package:isar/isar.dart';

import '../../models/models.dart';
import 'base_nosql_entity.dart';
import 'base_nosql_repository.dart';
import 'cubits/exports.dart';
import 'cubits/model_cubit.dart';

abstract class BaseNoSqlRepositoryImpl<Model, Entity extends BaseNoSqlEntity,
    IdType> implements BaseNoSqlRepository<Model, IdType> {
  IsarCollection<Entity> entityCollection;

  BaseNoSqlRepositoryImpl(this.entityCollection);

  Future<void> clear() async {
    await entityCollection.isar
        .writeTxn(() async => await entityCollection.buildQuery().deleteAll());
  }

  Future<Optional<Model>> getById(IdType id) async {
    final data = await idEqual(entityCollection.where(), id).findFirst();
    return convertToModel(data);
  }

  @override
  Future<ModelCubit<Model>> getByIdWatcher(IdType id) async {
    final query = await idEqual(entityCollection.where(), id).build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelObjectCubitImpl<Model, Entity>(
      stream: dataListStream,
      convertToModel: convertToModel,
    );
  }

  @override
  Future<List<Model>> getAll() async {
    final entityList = await entityCollection.isar
        .txn(() async => await entityCollection.where().findAll());
    final list = <Model>[];
    for (Entity entity in entityList) {
      list.add(convertToModel(entity).data);
    }
    return list;
  }

  @override
  Future<ModelCubit<List<Model>>> getAllWatcher() async {
    final query = entityCollection.where().build();
    final dataListStream = query.watch(fireImmediately: true);
    return ModelListCubitImpl<List<Model>, List<Entity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  @override
  Future<List<Model>> getIdList(List<IdType> idList) async {
    final query = _buildQuery(idList);
    final entityList = await query.findAll();
    final list = <Model>[];
    for (Entity entity in entityList) {
      list.add(convertToModel(entity).data);
    }
    return list;
  }

  @override
  Future<ModelCubit<List<Model>>> getIdListWatcher(List<IdType> idList) async {
    final query = _buildQuery(idList);
    final dataListStream = query.watch(fireImmediately: true);
    return ModelListCubitImpl<List<Model>, List<Entity>>(
      stream: dataListStream,
      convertToModel: convertToModelList,
    );
  }

  Query<Entity> _buildQuery(List<IdType> idList) {
    QueryBuilder<Entity, Entity, QWhereClause> queryBuilder =
        entityCollection.where();
    if (idList.isNotEmpty) {
      final where = entityCollection.where();
      QueryBuilder<Entity, Entity, QAfterWhereClause> queryBuilder =
          idEqual(where, idList[0]);
      for (int i = 1; i < idList.length; i++) {
        queryBuilder = idEqual(queryBuilder.or(), idList[i]);
      }
      return queryBuilder.build();
    }
    return entityCollection.buildQuery();
  }

  Future<void> upsert(Model model) async {
    final entityOption = convertToEntity(model);
    await entityCollection.isar.writeTxn(() async {
      final entity = entityOption.data;
      final currentInstance =
          await idEqual(entityCollection.where(), idFromModel(model))
              .findFirst();
      if (currentInstance != null) {
        entity.tempId = currentInstance.tempId;
      }
      return await entityCollection.put(entity);
    });
  }

  Future<void> upsertAll(List<Model> dataList) async {
    await entityCollection.isar.writeTxn(() async {
      final List<Entity> entityList = [];

      for (var model in dataList) {
        final entity = convertToEntity(model).data;
        final currentInstance =
            await idEqual(entityCollection.where(), idFromModel(model))
                .findFirst();
        if (currentInstance != null) {
          entity.tempId = currentInstance.tempId;
        }
        entityList.add(entity);
      }
      return await entityCollection.putAll(entityList);
    });
  }

  Future<void> delete(IdType id) async {
    await entityCollection.isar.writeTxn(
        () async => await idEqual(entityCollection.where(), id).deleteFirst());
  }

  Future<void> deleteAll(List<IdType> idList) async {
    final list = <Future>[];
    for (IdType idType in idList) {
      list.add(delete(idType));
    }
    for (Future future in list) {
      await future;
    }
  }

  IdType idFromModel(Model model);

  QueryBuilder<Entity, Entity, QAfterWhereClause> idEqual(
      QueryBuilder<Entity, Entity, QWhereClause> queryBuilder, IdType value);

  Optional<Model> convertToModel(Entity? entity);

  Optional<Entity> convertToEntity(Model? model);

  Optional<List<Model>> convertToModelList(List<Entity>? entityList) {
    if (entityList == null) return Optional.empty<List<Model>>();
    final list = <Model>[];
    Optional<Model> dataOption = Optional.empty();
    for (Entity entity in entityList) {
      dataOption = convertToModel(entity);
      if (dataOption.hasData) {
        list.add(dataOption.data);
      }
    }
    return Optional.ofNullable(list);
  }
}
