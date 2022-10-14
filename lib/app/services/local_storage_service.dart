import 'dart:convert';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop2hand/app/config/app_constants.dart';
import 'package:shop2hand/domain/entities/user.dart';

class LocalStorageService extends GetxService {
  static SharedPreferences? _sharedPreferences;

  static Future<LocalStorageService?> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return LocalStorageService();
  }

  static clearAllData() => _sharedPreferences!.clear();

  static String? get getToken {
    try {
      String? token = _sharedPreferences!.getString(
        AppConstants.sharedReferenceToken,
      );
      if (token == '') return null;
      return token;
    } catch (e) {
      return null;
    }
  }

  static User? getUser() {
    try {
      Map<String, dynamic> userMap = jsonDecode(
        _sharedPreferences!.getString(AppConstants.sharedReferenceUser)!,
      );
      User user = User.fromJson(userMap);
      return user;
    } catch (e) {
      return null;
    }
  }

  static set setToken(String token) {
    try {
      _sharedPreferences!.setString(AppConstants.sharedReferenceToken, token);
    } catch (e) {
      throw Exception(e);
    }
  }

  static set setUser(User? user) {
    try {
      String response = jsonEncode(user);
      _sharedPreferences!.setString(AppConstants.sharedReferenceUser, response);
    } catch (e) {
      throw Exception(e);
    }
  }
}
