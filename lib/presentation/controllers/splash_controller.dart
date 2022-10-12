import 'dart:developer';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SplashController extends GetxController {
  final LocalStorageService localStorageService;
  final IAuthenticationRepository iAuthenticationRepository;
  SplashController(this.localStorageService, this.iAuthenticationRepository);

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  Future<void> validateSession() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      final token = await localStorageService.getToken();
      if (token != null) {
        final user = await iAuthenticationRepository.getUserFromToken(token);
        if (user != null) {
          await localStorageService.setUser(user);
          Get.offAllNamed(Routers.home);
        }
      }
      Get.offAllNamed(Routers.signIn);
    } catch (e) {
      log(e.toString());
    }
  }
}
