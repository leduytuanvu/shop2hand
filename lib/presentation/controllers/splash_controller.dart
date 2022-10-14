import 'dart:developer';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SplashController extends GetxController {
  final AuthRepository authenticationRepository;
  SplashController({required this.authenticationRepository});

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  var user = LocalStorageService.getUser().obs;
  var token = LocalStorageService.getToken.obs;

  Future<void> validateSession() async {
    // await Future.delayed(const Duration(seconds: 3));
    try {
      // log('validate1');
      // // user(LocalStorageService.getUser());
      // // token(LocalStorageService.getToken);
      // if (token.value != null) {
      //   log('validate2');
      //   // final response =
      //   //     await authenticationRepository.getUserFromToken(token.value);
      //   // s
      //   log('validate3');
      // }
      // log('validate4');
      Get.offAllNamed(Routers.signIn);
    } catch (e) {
      log(e.toString());
    }
  }
}
