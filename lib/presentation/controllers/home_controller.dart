import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/domain/entities/user.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class HomeController extends GetxController {
  final LocalStorageService localStorageService;
  HomeController(this.localStorageService);

  // @override
  // void onReady() {
  //   validateSession();
  //   super.onReady();
  // }

  Future<User?> getUser() async {
    final user = await localStorageService.getUser();
    if (user != null) {
      return user;
    } else {
      return null;
    }
  }
}
