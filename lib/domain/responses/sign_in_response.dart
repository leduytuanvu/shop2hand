import 'package:shop2hand/domain/entities/user.dart';

class SignInResponse {
  String? token;
  User? user;

  SignInResponse({this.token, this.user});
}
