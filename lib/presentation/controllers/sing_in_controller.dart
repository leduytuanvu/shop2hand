import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_in_request.dart';
import 'package:shop2hand/domain/responses/auth_responses/sign_in_response.dart';

enum LoginState {
  loading,
  initial,
  success,
  error,
}

class SignInController extends GetxController {
  final LocalStorageService localStorageService;
  final IAuthenticationRepository iAuthenticationRepository;
  SignInController(this.iAuthenticationRepository, this.localStorageService);

  final userNameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  var loginState = LoginState.initial.obs;

  Future<void> signIn() async {
    try {
      loginState.value = LoginState.loading;
      await Future.delayed(const Duration(seconds: 3));
      final userName = userNameTextController.text;
      final password = passwordTextController.text;

      final response = await iAuthenticationRepository.signIn(
        SignInRequest(username: userName, password: password),
      );

      if (response != null) {
        await localStorageService.setUser(response.user);
        loginState.value = LoginState.success;
      }
    } catch (e) {
      loginState.value = LoginState.error;
      log(e.toString());
    }
  }
}
