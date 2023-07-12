import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/data/config/network_config.dart';
import 'package:core_sdk/data/network/default_imports.dart';
import 'package:core_sdk/domain/nasa_get_it.dart';
import 'package:core_sdk/data/repositories/nasa_db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test RoverPhotoDao Test Cases', () {
    setUp(() async {
      await CoreSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: '',
        apiKey: '',
        useMock: true,
      ));
      final repo = NasaSdkGetIt.shared.get<RoverPhotosRepository>();
      await repo.clear();
    });

    test('Test Add Rover Photos', () async {
      final repo = NasaSdkGetIt.shared.get<RoverPhotosRepository>();
      await repo.saveAll(['sample']);
      final list = await repo.getAll();
      expect(list.length, 1);
    });

    test('Test Delete Rover Photos', () async {
      final repo = NasaSdkGetIt.shared.get<RoverPhotosRepository>();
      await repo.clear();
      final list = await repo.getAll();
      expect(list.length, 0);
    });
  });
}
