import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shop2hand/data/repositories/user_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
// import 'package:shop2hand/domain/requests/auth_requests/sign_up_request.dart';
// import 'package:shop2hand/presentation/navigation/routers.dart';

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
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController imageTextController = TextEditingController();
  var signUpState = SignUpState.initial.obs;

  Future<void> signUp() async {
    try {
      signUpState(SignUpState.loading);
      final userName = usernameTextController.text;
      final password = passwordTextController.text;
      final fullName = fullNameTextController.text;
      final phone = phoneTextController.text;
      final email = emailTextController.text;
      final image = imageTextController.text;
      // SignUpRequest signUpRequest = SignUpRequest(
      //   email: email,
      //   image: image,
      //   fullName: fullName,
      //   password: password,
      //   phone: phone,
      //   username: userName,
      // );
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.trim(), password: password.trim());

      await FirebaseFirestore.instance.collection('users').add({
        'username': userName,
        'phone': phone,
        'image': image,
        'password': password,
        'email': email,
        'fullName': fullName,
      });
      // final response = await accountRepository.signUp(signUpRequest);
      // if (response != null) {
      //   Get.offAllNamed(Routers.home);
      // }
      // Get.snackbar('HI ${response!.user!.fullName}', 'WELL COME TO SHOP2HAND');
      Get.offAllNamed(Routers.home);
      signUpState(SignUpState.initial);
      Get.snackbar('SUCCESS', 'SIGN UP SUCCESSFULLY');
    } catch (e) {
      signUpState(SignUpState.initial);
      log(e.toString());
      Get.snackbar('ERROR', 'SOMTHING WENT WRONG!');
    }
  }
}
