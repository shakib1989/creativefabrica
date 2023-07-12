import 'package:isar/isar.dart';

import 'entities/entities.dart';

class NasaDB {
  static NasaDB? _instance;

  static bool get initialized => _instance != null;

  static NasaDB get shared {
    if (_instance != null) return _instance!;
    throw Exception("Nasa DB Not Initialized");
  }

  late Isar database;

  static Future<NasaDB> initialize() async {
    if (_instance == null) {
      _instance = NasaDB._();
      await _instance!.init();
    }
    return _instance!;
  }

  NasaDB._();

  Future<void> init() async {
    database = await Isar.open(
      [
        RoverPhotoEntitySchema,
      ],
      name: 'rover_db',
    );
  }
}
