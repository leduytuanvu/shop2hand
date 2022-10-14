import 'package:get/get.dart';
import 'package:shop2hand/data/network/api/auth_api.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController(authenticationRepository: Get.find()));
    Get.lazyPut(() => AuthAPI(dioClient: Get.find()));
  }
}
