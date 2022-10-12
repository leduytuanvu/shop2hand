import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';
import 'package:shop2hand/presentation/widgets/text_field_widget.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView(
          children: [
            TextFieldWidget(
                controller: controller.userNameTextController,
                lable: 'Username'),
            TextFieldWidget(
                controller: controller.passwordTextController,
                lable: 'Password'),
            ElevatedButton(
              child: const Text('SIGN IN'),
              onPressed: () => controller.signIn(),
            ),
            controller.loginState.value == LoginState.loading
                ? const Center(child: CircularProgressIndicator())
                : Container(),
              
          ],
        ),
      ),
    );
  }
}
