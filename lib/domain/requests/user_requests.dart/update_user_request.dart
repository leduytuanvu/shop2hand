import 'package:shop2hand/domain/entities/user.dart';

class UpdateUserRequest {
  String? id;
  User? user;

  UpdateUserRequest({this.id, this.user});
}
