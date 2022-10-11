import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/domain/interface_repositories/interface_api_repository.dart';
import 'package:shop2hand/domain/interface_repositories/interface_local_storage_repository.dart';
import 'package:shop2hand/domain/requests/sign_in_request.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SignInController extends GetxController {
  final ILocalStorageRepository iLocalStorageRepository;
  final IApiRepository iApiRepository;
  SignInController(this.iApiRepository, this.iLocalStorageRepository);

  final userNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  void signIn() async {
    final userName = userNameTextController.text;
    final password = passwordTextController.text;

    final response = iApiRepository.signIn(
      SignInRequest(username: userName, password: password),
    );

    // iLocalStorageRepository.setToken(response.);
    Get.offNamed(Routers.home);
  }
}
