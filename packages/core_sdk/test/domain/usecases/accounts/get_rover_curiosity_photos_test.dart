import 'package:core_sdk/config/env_modes.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:core_sdk/data/config/network_config.dart';
import 'package:core_sdk/data/network/nasa/default_imports.dart';
import 'package:core_sdk/domain/exports.dart';
import 'package:core_sdk/domain/nasa_get_it.dart';
import 'package:core_sdk/domain/repositories/rover_photos_repository.dart';
import 'package:core_sdk/domain/use_cases/nasa/get_rover_curiosity_photos_local_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test RoverPhotoDao Use Case Test Cases', () {
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
      final list = await GetRoverCuriosityPhotosLocalUseCase().call();
      expect(
        list.length,
        MockNasaResponse().roverPhotos().photos.length,
      );
    });
  });
}
