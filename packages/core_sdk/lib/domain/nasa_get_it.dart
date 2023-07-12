import 'package:core_sdk/wrappers.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'nasa_get_it.config.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureCommonDependencies(GetIt getIt) => init(getIt);

class NasaSdkGetIt extends BaseGetIt {
  static NasaSdkGetIt? _instance;

  static bool get initialized => _instance != null;

  static NasaSdkGetIt get shared {
    if (_instance != null) return _instance!;
    throw Exception("Nasa Sdk Get It not initialized");
  }

  static NasaSdkGetIt initialize() {
    if (!initialized) {
      _instance = NasaSdkGetIt._();
    }
    return _instance!;
  }

  NasaSdkGetIt._();

  @override
  void configureDependencies(GetIt getIt) {
    configureCommonDependencies(getIt);
  }
}
