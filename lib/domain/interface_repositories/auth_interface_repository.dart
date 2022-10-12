import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_up_response.dart';

abstract class IAuthenticationRepository {
  Future<SignUpResponse?> signUp(SignUpRequest? signUpRequest);
  Future<SignInResponse?> signIn(SignInRequest? signInRequest);
  Future<void> signOut();
  Future<User?> getUserFromToken(String? token);
}
