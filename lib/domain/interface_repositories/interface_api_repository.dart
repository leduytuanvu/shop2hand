import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/domain/requests/sign_in_request.dart';
import 'package:shop2hand/domain/responses/sign_in_response.dart';

abstract class IApiRepository {
  Future<User> getUserFromToken(String token);
  Future<SignInResponse> signIn(SignInRequest signInRequest);
  Future<void> signOut(String token);
}
