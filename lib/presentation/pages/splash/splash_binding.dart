import 'package:get/get.dart';
import 'package:shop2hand/presentation/pages/splash/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(Get.find(), Get.find()));
  }
}
