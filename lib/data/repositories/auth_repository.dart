import 'dart:developer';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_up_response.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  @override
  Future<SignInResponse?> signIn(SignInRequest? signInRequest) async {
    if (signInRequest == null) return null;
    User user = User(
      id: '1',
      fullName: 'fullName',
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
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<SignUpResponse?> signUp(SignUpRequest? signUpRequest) async {
    if (signUpRequest == null) return null;
    try {
      await Future.delayed(const Duration(seconds: 3));
      User user = User(
        id: '1',
        fullName: signUpRequest.fullName,
        description: signUpRequest.description,
        gender: signUpRequest.gender,
        phone: signUpRequest.phone,
        buildingID: signUpRequest.buildingId,
        userName: signUpRequest.username,
        password: signUpRequest.password,
      );
      String token = 'token';
      SignUpResponse signUpResponse = SignUpResponse(user: user, token: token);
      return signUpResponse;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<User?> getUserFromToken(String? token) async {
    if (token == null) return null;
    try {
      final token = await LocalStorageService().getToken();
      if (token == null) {
        return null;
      } else {
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
}
