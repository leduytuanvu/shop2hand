import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';

class HomeController extends GetxController {
  HomeController();

  var user = LocalStorageService.getUser().obs;

  @override
  void onReady() {
    loadUser();
    super.onReady();
  }

  void loadUser() {
    user(LocalStorageService.getUser());
  }
}
