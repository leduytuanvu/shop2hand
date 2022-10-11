// import 'package:get/get.dart';
// import 'package:shop2hand/data/repositories/auth_repository.dart';
// import 'package:shop2hand/domain/usecases/sign_up_use_case.dart';
// import 'package:shop2hand/presentation/controllers/auth/auth_controller.dart';

// class AuthBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => SignUpUseCase(Get.find<AuthenticationRepositoryIml>()));
//     Get.put(AuthController(Get.find()), permanent: true);
//   }
// }