import 'package:hello/data/model/user_model.dart';
import 'package:hello/data/provider/login_provider.dart';

class LoginRepository {
  final LoginAPiClient apiClient = LoginAPiClient();

  Future<UserModel?> signWithEmailWithPassword(String email, String password) {
    return apiClient.signWithEmailWithPassword(email, password);
  }

  Future<String?> createUserWithEmailAndPassword(
      String email, String password) {
    return apiClient.createUserWithEmailAndPassword(email, password);
  }

  signOut() {
    return apiClient.signOut();
  }
}
