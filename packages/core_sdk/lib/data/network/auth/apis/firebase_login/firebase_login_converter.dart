part of 'firebase_login_api.dart';

class FirebaseLoginToInitModelConverter {
  static String convert(FirebaseLoginResponse response) {
    return response.data.token;
  }
}
