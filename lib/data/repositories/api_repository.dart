import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/exceptions/auth_exception.dart';
import 'package:shop2hand/domain/interface_repositories/interface_api_repository.dart';
import 'package:shop2hand/domain/responses/sign_in_response.dart';
import 'package:shop2hand/domain/requests/sign_in_request.dart';

class ApiRepository extends IApiRepository {
  @override
  Future<User> getUserFromToken(String token) async {
    await Future.delayed(const Duration(seconds: 5));
    return Future.value(User(fullName: 'TUAN VU'));
  }

  @override
  Future<SignInResponse> signIn(SignInRequest signInRequest) async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      if (signInRequest.username == 'admin' &&
          signInRequest.password == 'admin') {
        return SignInResponse(token: 'token', user: User(fullName: 'admin'));
      }
      return SignInResponse(token: null, user: null);
    } catch (e) {
      throw AuthException();
    }
  }

  @override
  Future<void> signOut(String token) {
    throw UnimplementedError();
  }
}
