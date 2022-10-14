import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(authenticationRepository: Get.find()));
  }
}
