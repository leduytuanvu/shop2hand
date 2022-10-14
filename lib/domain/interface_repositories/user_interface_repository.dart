import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_up_response.dart';

abstract class IUserRepository {
  Future<SignUpResponse?> signUp(SignUpRequest? signUpRequest);
  Future<void> signOut();
}
