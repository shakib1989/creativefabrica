import 'apis/get_rover_curiosity_photos/get_rover_curiosity_photos_api.dart';
import 'default_imports.dart';

class NasaNetworkImpl extends NasaNetwork {
  final NetworkConfig networkConfig;

  NasaNetworkImpl(this.networkConfig);

  @override
  Future<Either<FailureModel, List<String>>> getRoverImages() =>
      GetRoverCuriosityPhotosApi(networkConfig).call();
}
