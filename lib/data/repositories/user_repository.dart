import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shop2hand/data/network/dio/dio_exception.dart';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/user_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_up_response.dart';

class UserRepository extends IUserRepository {
  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<SignUpResponse?> signUp(SignUpRequest? signUpRequest) async {
    try {
      if (signUpRequest == null) return null;
      User user = User(
        id: '1',
        fullName: signUpRequest.fullName,
        description: signUpRequest.description,
        gender: signUpRequest.gender,
        phone: signUpRequest.phone,
        buildingID: signUpRequest.buildingId,
      );
      String token = 'token';
      SignUpResponse signUpResponse = SignUpResponse(user: user, token: token);
      return signUpResponse;
    } on DioError catch (e) {
      log(e.toString());
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
