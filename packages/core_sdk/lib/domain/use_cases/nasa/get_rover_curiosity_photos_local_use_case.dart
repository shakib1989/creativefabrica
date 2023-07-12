import 'package:core_sdk/domain/models/models.dart';
import 'package:core_sdk/domain/networks/nasa_network.dart';
import 'package:core_sdk/domain/repositories/rover_photos_repository.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../nasa_get_it.dart';

class GetRoverCuriosityPhotosLocalUseCase {
  RoverPhotosRepository get repo => NasaSdkGetIt.shared.get();

  GetRoverCuriosityPhotosLocalUseCase();

  Future<List<String>> call() async {
    return await repo.getAll();
  }
}
