import '../data/config/auth_network_config.dart';
import 'sdk_config.dart';

class SdkConfigStaging implements SdkConfig {
  @override
  NetworkConfig networkConfig = NetworkConfig(
    appId: 'lagao_staging',
    baseUrl: 'https://api.lagao.net/auth/',
    useMock: true,
  );
}
