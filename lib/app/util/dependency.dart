import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthRepository(authAPI: Get.find()));
  }
}
