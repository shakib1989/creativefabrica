import '../data/config/auth_network_config.dart';
import 'sdk_config.dart';

class SdkConfigDev implements SdkConfig {
  @override
  NetworkConfig networkConfig = NetworkConfig(
    appId: '',
    baseUrl: '',
    useMock: true,
  );
}
