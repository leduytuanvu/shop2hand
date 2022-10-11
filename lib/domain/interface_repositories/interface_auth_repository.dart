import 'package:shop2hand/domain/entities/user.dart';

abstract class IAuthenticationRepository {
  Future<User> signUp(String username);
}
