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
    return _sharedPreferences!.getString(AppConstants.sharedReferenceToken);
  }

  static User? getUser() {
    Map userMap = jsonDecode(
      _sharedPreferences!.getString(AppConstants.sharedReferenceUser)!,
    );
    return User.fromJson(userMap);
  }

  static set setToken(String token) {
    _sharedPreferences!.setString(AppConstants.sharedReferenceToken, token);
  }

  static set setUser(User? user) {
    String response = jsonEncode(user);
    _sharedPreferences!.setString(AppConstants.sharedReferenceUser, response);
  }
}
