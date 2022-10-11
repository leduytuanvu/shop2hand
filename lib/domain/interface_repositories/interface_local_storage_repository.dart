import 'package:shop2hand/domain/entities/user.dart';

abstract class ILocalStorageRepository {
  Future<String?> getToken();
  Future<void> setToken(String token);
  Future<void> clearAllData();
  Future<User?> getUser();
  Future<void> setUser(User user);
}
