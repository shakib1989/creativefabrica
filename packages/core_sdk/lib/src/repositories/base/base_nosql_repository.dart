import '../../models/models.dart';
import 'cubits/model_cubit.dart';

abstract class BaseNoSqlRepository<Model, IdType> {
  Future<Optional<Model>> getById(IdType id);

  Future<ModelCubit<Model>> getByIdWatcher(IdType id);

  Future<List<Model>> getAll();

  Future<ModelCubit<List<Model>>> getAllWatcher();

  Future<List<Model>> getIdList(List<IdType> idList);

  Future<ModelCubit<List<Model>>> getIdListWatcher(List<IdType> idList);

  Future<void> upsert(Model data);

  Future<void> upsertAll(List<Model> dataList);

  Future<void> delete(IdType id);

  Future<void> deleteAll(List<IdType> idList);
}
