import '../data/config/auth_network_config.dart';
import 'sdk_config.dart';

class SdkConfigProduction implements SdkConfig {
  @override
  NetworkConfig networkConfig = NetworkConfig(
    appId: 'lagao_prod',
    baseUrl: 'https://api.lagao.net/auth/',
    useMock: true,
  );
}
