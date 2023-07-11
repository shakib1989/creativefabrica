
import 'package:core_sdk/wrappers.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'auth_get_it.config.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureCommonDependencies(GetIt getIt) => init(getIt);

class AuthSdkGetIt extends BaseGetIt {
  static AuthSdkGetIt? _instance;

  static bool get initialized => _instance != null;

  static AuthSdkGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("Auth Sdk Get It not initialized");
  }

  static AuthSdkGetIt initialize() {
    if (!initialized) {
      _instance = AuthSdkGetIt._();
    }
    return _instance!;
  }


  AuthSdkGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureCommonDependencies(getIt);
  }
}
