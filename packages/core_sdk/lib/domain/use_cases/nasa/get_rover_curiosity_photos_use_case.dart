import 'package:core_sdk/domain/models/models.dart';
import 'package:core_sdk/domain/networks/nasa_network.dart';
import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../../nasa_get_it.dart';

class GetRoverCuriosityPhotosUseCase {
  NasaNetwork get network => NasaSdkGetIt.shared.get();

  GetRoverCuriosityPhotosUseCase();

  Future<Future<Either<FailureModel, List<String>>>> call(int sol) async {
    return network.getRoverImages(sol);
  }
}
