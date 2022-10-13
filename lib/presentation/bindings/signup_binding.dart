import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(accountRepository: Get.find()));
  }
}
