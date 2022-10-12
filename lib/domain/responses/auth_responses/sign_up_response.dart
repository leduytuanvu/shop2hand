import 'package:shop2hand/domain/entities/user.dart';

class SignUpResponse {
  String? token;
  User? user;

  SignUpResponse({this.token, this.user});
}
