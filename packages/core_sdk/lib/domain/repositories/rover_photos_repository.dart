abstract class RoverPhotosRepository {
  Future<void> clear();

  Future<List<String>> getAll();

  Future<void> saveAll(List<String> list);
}
