import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut<IAuthenticationRepository>(() => AuthenticationRepository());
  }
}
