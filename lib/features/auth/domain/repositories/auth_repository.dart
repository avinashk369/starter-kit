import 'package:moneymemos/features/auth/data/model/user_model.dart';

abstract class AuthRepository {
  Future<UserModel> googleSignIn();
  Future<bool> authLogout();
}
