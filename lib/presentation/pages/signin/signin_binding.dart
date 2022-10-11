import 'package:get/get.dart';
import 'package:shop2hand/presentation/pages/signin/singin_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController(Get.find(), Get.find()));
  }
}
