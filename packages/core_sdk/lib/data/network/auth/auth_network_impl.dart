
import 'package:core_sdk/domain/auth_get_it.dart';
import 'package:dartz/dartz.dart';
import 'apis/check_session_valid/check_session_valid_api.dart';
import 'apis/exports.dart';
import 'apis/logout/logout_api.dart';
import 'default_imports.dart';

class AuthNetworkImpl extends AuthNetwork {
  final NetworkConfig networkConfig;

  AuthNetworkImpl(this.networkConfig);
  AuthRepository get repo => AuthSdkGetIt.shared.get();

  @override
  Future<Either<FailureModel, DeviceRegisterResponseModel>> registerDevice(
    DeviceInfoModel data,
  ) =>
      DeviceRegisterApi(networkConfig).call(data);

  @override
  Future<Either<FailureModel, bool>> isSessionValid() =>
      CheckSessionValidApi(networkConfig).call();

  @override
  Future<Either<FailureModel, EmptyModel>> logout() =>
      LogoutApi(networkConfig).call();

  @override
  Future<Either<FailureModel, String>> firebaseLogin(String idToken) =>
      FirebaseLoginApi(networkConfig).call(idToken);
}
