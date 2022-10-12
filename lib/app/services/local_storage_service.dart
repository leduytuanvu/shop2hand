import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop2hand/app/config/app_constants.dart';
import 'package:shop2hand/domain/entities/user.dart';

class LocalStorageService {
  late SharedPreferences _sharedPreferences;

  Future<LocalStorageService?> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  Future<void> clearAllData() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.clear();
  }

  Future<String?> getToken() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.getString(AppConstants.sharedReferenceToken);
  }

  Future<User?> getUser() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    Map userMap = jsonDecode(
        _sharedPreferences.getString(AppConstants.sharedReferenceUser)!);
    var user = User.fromJson(userMap);
    return user;
  }

  Future<void> setToken(String token) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString(AppConstants.sharedReferenceToken, token);
  }

  Future<void> setUser(User? user) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    String response = jsonEncode(user);
    _sharedPreferences.setString(AppConstants.sharedReferenceUser, response);
  }
}
