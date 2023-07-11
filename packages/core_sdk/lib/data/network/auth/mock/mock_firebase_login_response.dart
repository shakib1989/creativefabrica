part of 'mock_auth_responses.dart';

extension MockFirebaseLoginResponse on MockAuthResponse {
  FirebaseLoginResponse firebaseLogin(FirebaseLoginRequest request) {
    return FirebaseLoginResponse(
      statusCode: 200,
      meta: BaseMetaData(message: ''),
      data: FirebaseLoginResponseModel(
        token: '312321',
      ),
    );
  }
}
