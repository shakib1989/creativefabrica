import 'package:core_sdk/exports.dart';
import 'package:dartz/dartz.dart';

import '../models/models.dart';

abstract class NasaNetwork {
  Future<Either<FailureModel, List<String>>> getRoverImages(int sol);
}
