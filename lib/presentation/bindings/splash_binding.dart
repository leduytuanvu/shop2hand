import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/presentation/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController(authenticationRepository: Get.find()));
    // Get.lazyPut(() => AuthenticationRepository());
    Get.put(Dio()); // Check this line
  }
}
