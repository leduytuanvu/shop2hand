import 'dart:developer';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/interface_repositories/account_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_up_response.dart';

class AccountRepository extends IAccountRepository {
  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }

  @override
  Future<SignUpResponse?> signUp(SignUpRequest? signUpRequest) async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      if (signUpRequest == null) return null;
      // Get API here ====================
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
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
