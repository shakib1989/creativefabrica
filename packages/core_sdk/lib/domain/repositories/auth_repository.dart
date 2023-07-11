import '../models/models.dart';

abstract class AuthRepository {
  AppAuthModel getAppAuthModel();
  Future<bool> setAppAuthModel(AppAuthModel data);
  Future<void> clear();
}
