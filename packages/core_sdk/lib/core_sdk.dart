library core_sdk;

import 'package:core_sdk/config/sdk_config.dart';
import 'package:core_sdk/config/sdk_config_dev.dart';
import 'package:core_sdk/config/sdk_config_production.dart';
import 'package:core_sdk/config/sdk_config_staging.dart';
import 'package:core_sdk/data/network/auth/auth_network_impl.dart';
import 'package:core_sdk/domain/networks/accounts_network.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/env_modes.dart';
import 'config/sdk_config_mock.dart';
import 'data/network/accounts/accounts_network_impl.dart';
import 'data/repositories/auth_repository_impl.dart';
import 'domain/auth_get_it.dart';
import 'domain/networks/auth_network.dart';
import 'domain/repositories/auth_repository.dart';

class CoreSdk {
  static CoreSdk? _instance;

  static bool get initialized => _instance != null;

  static CoreSdk get shared {
    if (_instance != null) return _instance!;
    throw Exception("Core Sdk not initialized");
  }

  static Future<CoreSdk> initialize({
    required EnvMode mode,
  }) async {
    if (!initialized) {
      final sdk = CoreSdk._(
        mode: mode,
      );
      await sdk.init();
      _instance = sdk;
    }
    return _instance!;
  }

  final EnvMode mode;
  late final SdkConfig _sdkConfig;

  CoreSdk._({required this.mode});

  Future<void> init() async {
    _setConfig();
    AuthSdkGetIt.initialize();
    AuthSdkGetIt.shared.registerLazySingleton<AuthNetwork>(
      () => AuthNetworkImpl(
        _sdkConfig.networkConfig,
      ),
    );
    AuthSdkGetIt.shared.registerLazySingleton<AccountsNetwork>(
      () => AccountsNetworkImpl(
        _sdkConfig.networkConfig,
      ),
    );
   // final pref = await SharedPreferences.getInstance();
    AuthSdkGetIt.shared.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(),
    );
  }

  void _setConfig() {
    if (EnvMode.mock == mode) {
      _sdkConfig = SdkConfigMock();
    } else if (EnvMode.dev == mode) {
      _sdkConfig = SdkConfigDev();
    } else if (EnvMode.staging == mode) {
      _sdkConfig = SdkConfigStaging();
    } else if (EnvMode.production == mode) {
      _sdkConfig = SdkConfigProduction();
    }
  }
}
