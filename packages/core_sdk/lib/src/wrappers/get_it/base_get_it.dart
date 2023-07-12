import 'package:get_it/get_it.dart';

abstract class BaseGetIt {
  final _getIt = GetIt.asNewInstance();

  BaseGetIt() {
    configureDependencies(_getIt);
  }

  void configureDependencies(GetIt getIt);

  T get<T extends Object>({
    String? instanceName,
    dynamic param1,
    dynamic param2,
  }) {
    return _getIt.get<T>(
      instanceName: instanceName,
      param1: param1,
      param2: param2,
    );
  }

  void registerLazySingleton<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? dispose,
  }) {
    _getIt.registerLazySingleton<T>(
      factoryFunc,
      instanceName: instanceName,
      dispose: dispose,
    );
  }
}
