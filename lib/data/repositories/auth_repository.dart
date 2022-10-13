import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop2hand/data/network/api/auth_api.dart';
import 'package:shop2hand/data/network/api/user_api.dart';
import 'package:shop2hand/data/network/dio/dio_client.dart';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';

class AuthenticationRepository extends IAuthenticationRepository {
  DioClient dioClient = DioClient(Get.find<Dio>());

  @override
  Future<User?> getUserFromToken(String? token) async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      if (token == null || token.isEmpty) {
        return null;
      } else {
        UserAPI userAPI = UserAPI(dioClient: dioClient);
        final response = await userAPI.getUserFromID(token);
        final user = response.data['data'].map((e) => User.fromJson(e));
        return user;
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<SignInResponse?> signIn(SignInRequest? signInRequest) async {
    // await Future.delayed(const Duration(seconds: 3));
    try {
      if (signInRequest == null) return null;
      AuthAPI authAPI = AuthAPI(dioClient: dioClient);
      final response = await authAPI.signIn(signInRequest);
      User user = response.data['data'].map((e) => User.fromJson(e));
      String token = response.data['token'];
      SignInResponse signInResponse = SignInResponse(user: user, token: token);
      return signInResponse;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
