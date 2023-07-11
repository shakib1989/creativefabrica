library core_sdk;

import 'config/env_modes.dart';
import 'data/config/network_config.dart';
import 'data/network/nasa/nasa_network_impl.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'domain/nasa_get_it.dart';
import 'domain/networks/nasa_network.dart';
import 'domain/repositories/rover_photos_repository.dart';

class CoreSdk {
  static CoreSdk? _instance;

  static bool get initialized => _instance != null;

  static CoreSdk get shared {
    if (_instance != null) return _instance!;
    throw Exception("Core Sdk not initialized");
  }

  static Future<CoreSdk> initialize({
    required NetworkConfig networkConfig,
  }) async {
    if (!initialized) {
      final sdk = CoreSdk._(
        networkConfig: networkConfig,
      );
      await sdk.init();
      _instance = sdk;
    }
    return _instance!;
  }

  late final NetworkConfig networkConfig;

  CoreSdk._({required this.networkConfig});

  Future<void> init() async {
    NasaSdkGetIt.initialize();
    NasaSdkGetIt.shared.registerLazySingleton<NasaNetwork>(
      () => NasaNetworkImpl(
        networkConfig,
      ),
    );
    // final pref = await SharedPreferences.getInstance();
    NasaSdkGetIt.shared.registerLazySingleton<RoverPhotosRepository>(
      () => RoverPhotosRepositoryImpl(),
    );
  }
}
