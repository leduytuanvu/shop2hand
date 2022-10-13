import 'dart:developer';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  @override
  Future<User?> getUserFromToken(String? token) async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      if (token == null || token.isEmpty) {
        return null;
      } else {
        // Get API here ====================
        return User(
          id: '1',
          fullName: 'fullName',
          description: 'description',
          gender: 'gender',
          phone: 'phone',
          buildingID: 'buildingID',
          userName: 'username',
          password: 'password',
        );
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<SignInResponse?> signIn(SignInRequest? signInRequest) async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      if (signInRequest == null) return null;
      // Get API here ====================
      User user = User(
        id: '1',
        fullName: 'LE DUY THUAN VU',
        description: 'description',
        gender: 'gender',
        phone: 'phone',
        buildingID: 'buildingID',
        userName: 'username',
        password: 'password',
      );
      String token = 'token';
      SignInResponse signInResponse = SignInResponse(user: user, token: token);
      return signInResponse;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
