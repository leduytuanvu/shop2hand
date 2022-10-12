import 'dart:developer';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SplashController extends GetxController {
  final AuthenticationRepository authenticationRepository;
  SplashController({required this.authenticationRepository});

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  Future<void> validateSession() async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      final token = LocalStorageService.getToken;
      if (token != null) {
        final user = await authenticationRepository.getUserFromToken(token);
        if (user != null) {
          LocalStorageService.setUser = user;
          Get.offAllNamed(Routers.home);
        }
      }
      Get.offAllNamed(Routers.signIn);
    } catch (e) {
      log(e.toString());
    }
  }
}
