import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';

abstract class IAuthenticationRepository {
  Future<User?> getUserFromToken(String? token);
  Future<SignInResponse?> signIn(SignInRequest? signInRequest);
}
