import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/data/network/nasa/default_imports.dart';
import 'package:core_sdk/domain/exports.dart';
import 'package:core_sdk/domain/nasa_get_it.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Test RoverPhotoDao Use Case Test Cases', () {
    setUp(() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Isar.initializeIsarCore(download: true);
      await CoreSdk.initialize(
          networkConfig: NetworkConfig(
        baseUrl: '',
        apiKey: '',
        useMock: true,
      ));
      final repo = NasaSdkGetIt.shared.get<RoverPhotosRepository>();
      await repo.clear();
    });

    test('Test RoverPhotoDao Mock Network', () async {
      final result = await GetRoverCuriosityPhotosUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockNasaResponse().roverPhotos().photos.length,
      );
    });

    test('Test RoverPhotoDao Local Data', () async {
      final result = await GetRoverCuriosityPhotosUseCase().call();
      expect(result.isRight(), true);
      expect(
        result.getOrElse(() => []).length,
        MockNasaResponse().roverPhotos().photos.length,
      );
    });

    test('Test Get User Account Portfolio Statistics Day', () async {
      await GetRoverCuriosityPhotosUseCase().call();
      final list = await GetRoverCuriosityPhotosLocalUseCase().call();
      expect(
        list.length,
        MockNasaResponse().roverPhotos().photos.length,
      );
    });
  });
}
