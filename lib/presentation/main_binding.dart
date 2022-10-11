import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/api_repository.dart';
// import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/data/repositories/local_storage_repository.dart';
import 'package:shop2hand/domain/interface_repositories/interface_api_repository.dart';
// import 'package:shop2hand/domain/interface_repositories/interface_auth_repository.dart';
import 'package:shop2hand/domain/interface_repositories/interface_local_storage_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ILocalStorageRepository>(() => LocalStorageRepository());
    Get.lazyPut<IApiRepository>(() => ApiRepository());
    // Get.lazyPut<IAuthenticationRepository>(() => AuthenticationRepository());
  }
}
