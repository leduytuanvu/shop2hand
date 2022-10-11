import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/interface_auth_repository.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  @override
  Future<User> signUp(String username) async {
    //Fake sign up action
    await Future.delayed(const Duration(seconds: 1));
    return User(fullName: username);
  }
}
