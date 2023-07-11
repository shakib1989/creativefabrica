import 'package:core_sdk/data/network/auth/default_imports.dart';

part 'firebase_login_api.g.dart';
part 'firebase_login_request.dart';
part 'firebase_login_response.dart';
part 'firebase_login_converter.dart';

class FirebaseLoginApi
    extends BaseApiImpl<FirebaseLoginRequest, FirebaseLoginResponse>
    implements BaseApi<String> {
  FirebaseLoginApi(NetworkConfig networkConfig)
      : super(
          baseUrl: networkConfig.baseUrl,
          endpoint: AuthApiPaths.firebaseLogin,
          requestType: ApiRequestType.post,
          useMock: networkConfig.useMock,
        );

  @override
  Future<Either<FailureModel, String>> call(String idToken) async {
    final request = FirebaseLoginRequest(
      idToken: idToken,
    );
    final result = await apiCall(request);

    return result.fold((failure) => Left(failure.toFailureModel()), (data) {
      return Right(FirebaseLoginToInitModelConverter.convert(data));
    });
  }

  @override
  FirebaseLoginResponse apiResponseFromJson(Map<String, dynamic> json) =>
      FirebaseLoginResponse.fromJson(json);

  @override
  Future<Either<BaseApiResponse, FirebaseLoginResponse>> mock(
      FirebaseLoginRequest request) async {
    return Right(MockAuthResponse().firebaseLogin(request));
  }
}
