import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/domain/exceptions/auth_exception.dart';
import 'package:shop2hand/domain/interface_repositories/auth_interface_repository.dart';
import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SignUpController extends GetxController {
  final LocalStorageService localStorageService;
  final IAuthenticationRepository iAuthenticationRepository;
  SignUpController(this.iAuthenticationRepository, this.localStorageService);

  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController fullNameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController phoneTextController = TextEditingController();
  final TextEditingController genderTextController = TextEditingController();
  final TextEditingController descriptionTextController =
      TextEditingController();
  final TextEditingController buildingIDTextController =
      TextEditingController();

  Future<bool> signUp() async {
    try {
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
      await iAuthenticationRepository.signUp(signUpRequest);
      return true;
    } on AuthException catch (e) {
      log(e.toString());
      return false;
    }
  }
}
