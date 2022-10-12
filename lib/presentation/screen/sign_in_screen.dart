import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';
import 'package:shop2hand/presentation/widgets/text_field_widget.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                ],
              ),
              Obx(
                () {
                  if (controller.signInState.value == SignInState.loading) {
                    return Positioned(
                      top: size.height / 2,
                      left: size.width / 2,
                      right: size.width / 2,
                      child: const CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
