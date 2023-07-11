import 'dart:convert';

import 'package:core_sdk/domain/models/exports.dart';
import 'package:core_sdk/domain/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_pref_keys.dart';

class AuthRepositoryImpl extends AuthRepository {
 // final SharedPreferences prefs;

  //AuthRepositoryImpl(this.prefs);
  AuthRepositoryImpl();

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  AppAuthModel getAppAuthModel() {
    // TODO: implement getAppAuthModel
    throw UnimplementedError();
  }

  @override
  Future<bool> setAppAuthModel(AppAuthModel data) {
    // TODO: implement setAppAuthModel
    throw UnimplementedError();
  }
/*
  @override
  Future<void> clear() async {
    final auth = getAppAuthModel();
    await setAppAuthModel(AppAuthModel(device: auth.device));
  }

  @override
  AppAuthModel getAppAuthModel() {
    final jsonString = prefs.getString(AuthPrefKeys.appAuth);
    if (jsonString == null) {
      return AppAuthModel.empty();
    }
    return AppAuthModel.fromJson(jsonDecode(jsonString));
  }

  @override
  Future<bool> setAppAuthModel(AppAuthModel data) async {
    final jsonString = jsonEncode(data.toJson());
    return await prefs.setString(AuthPrefKeys.appAuth, jsonString);
  }
  */
}
