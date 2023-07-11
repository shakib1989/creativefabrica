import '../data/config/auth_network_config.dart';
import 'sdk_config.dart';

class SdkConfigMock implements SdkConfig {
  @override
  NetworkConfig networkConfig = NetworkConfig(
    appId: '',
    baseUrl: '',
    useMock: true,
  );
}
