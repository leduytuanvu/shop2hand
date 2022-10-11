import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop2hand/app/config/app_constants.dart';
import 'package:shop2hand/domain/entities/user.dart';
import '../../domain/interface_repositories/interface_local_storage_repository.dart';

class LocalStorageRepository extends ILocalStorageRepository {
  @override
  Future<void> clearAllData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<String?> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(AppConstants.sharedReferenceToken!);
  }

  @override
  Future<User?> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map userMap = jsonDecode(
        sharedPreferences.getString(AppConstants.sharedReferenceUser!)!);
    var user = User.fromJson(userMap);
    return user;
  }

  @override
  Future<void> setToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(AppConstants.sharedReferenceToken!, token);
  }

  @override
  Future<void> setUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // Map decode = jsonDecode(
    //     sharedPreferences.getString(AppConstants.sharedReferenceUser!)!);
    String response = jsonEncode(user);
    sharedPreferences.setString(AppConstants.sharedReferenceUser!, response);
  }
}
