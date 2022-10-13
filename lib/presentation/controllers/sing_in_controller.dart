import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

enum SignInState {
  loading,
  initial,
  success,
  error,
}

class SignInController extends GetxController {
  final AuthenticationRepository authenticationRepository;
  SignInController({required this.authenticationRepository});

  final userNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  var signInState = SignInState.initial.obs;

  Future<void> signIn() async {
    try {
      signInState(SignInState.loading);
      await Future.delayed(const Duration(seconds: 3));
      final userName = userNameTextController.text;
      final password = passwordTextController.text;

      final response = await authenticationRepository.signIn(
        SignInRequest(username: userName, password: password),
      );

      if (response != null) {
        LocalStorageService.setUser = response.user;
        Get.offAllNamed(Routers.home);
      }
      Get.snackbar('HI ${response!.user!.fullName}', 'WELL COME TO SHOP2HAND');
    } catch (e) {
      signInState(SignInState.initial);
      log(e.toString());
      Get.snackbar('ERROR', 'USERNAME OR PASSWORD IS WRONG');
    }
  }
}
