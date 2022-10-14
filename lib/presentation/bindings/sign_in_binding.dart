import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
    // Get.lazyPut(() => SignInController(authenticationRepository: Get.find()));
    Get.lazyPut(() => AuthRepository(authAPI: Get.find()));
  }
}
