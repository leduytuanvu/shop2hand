import 'package:get/get.dart';
import 'package:shop2hand/domain/interface_repositories/interface_api_repository.dart';
import 'package:shop2hand/domain/interface_repositories/interface_local_storage_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class HomeController extends GetxController {
  final ILocalStorageRepository iLocalStorageRepository;
  final IApiRepository iApiRepository;
  HomeController(this.iApiRepository, this.iLocalStorageRepository);

  // @override
  // void onReady() {
  //   validateSession();
  //   super.onReady();
  // }

  void validateSession() async {
    final token = await iLocalStorageRepository.getToken();
    if (token != null) {
      final user = await iApiRepository.getUserFromToken(token);
      if (user.fullName == '') {
        Get.offNamed(Routers.signIn);
      } else {
        await iLocalStorageRepository.setUser(user);
        Get.offAllNamed(Routers.home);
      }
    } else {
      Get.offAllNamed(Routers.signIn);
    }
  }
}
