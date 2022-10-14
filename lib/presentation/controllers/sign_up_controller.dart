import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/user_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

enum SignUpState {
  loading,
  initial,
  success,
  error,
}

class SignUpController extends GetxController {
  final UserRepository accountRepository;
  SignUpController({required this.accountRepository});

  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController fullNameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController phoneTextController = TextEditingController();
  final TextEditingController genderTextController = TextEditingController();
  final TextEditingController descriptionTextController =
      TextEditingController();
  final TextEditingController buildingIDTextController =
      TextEditingController();
  var signUpState = SignUpState.initial.obs;

  Future<void> signUp() async {
    try {
      // await Future.delayed(const Duration(seconds: 3));
      signUpState(SignUpState.loading);
      final userName = usernameTextController.text;
      final password = passwordTextController.text;
      final fullName = fullNameTextController.text;
      final phone = phoneTextController.text;
      final gender = genderTextController.text;
      final description = descriptionTextController.text;
      final buildingID = buildingIDTextController.text;
      SignUpRequest signUpRequest = SignUpRequest(
        buildingId: buildingID,
        description: description,
        fullName: fullName,
        gender: gender,
        password: password,
        phone: phone,
        username: userName,
      );
      final response = await accountRepository.signUp(signUpRequest);
      if (response != null) {
        Get.offAllNamed(Routers.home);
      }
      Get.snackbar('HI ${response!.user!.fullName}', 'WELL COME TO SHOP2HAND');
    } catch (e) {
      log(e.toString());
      Get.snackbar('ERROR', 'SOMTHING WENT WRONG!');
    }
  }
}
