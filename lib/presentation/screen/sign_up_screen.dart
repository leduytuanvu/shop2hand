import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shop2hand/presentation/controllers/sign_up_controller.dart';
import 'package:shop2hand/presentation/widgets/text_field_widget.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SizedBox(
                height: size.height,
                child: Column(
                  children: [
                    TextFieldWidget(
                        controller: controller.usernameTextController,
                        lable: 'Username'),
                    TextFieldWidget(
                        controller: controller.fullNameTextController,
                        lable: 'Full Name'),
                    TextFieldWidget(
                        controller: controller.passwordTextController,
                        lable: 'Password'),
                    TextFieldWidget(
                        controller: controller.phoneTextController,
                        lable: 'Phone'),
                    TextFieldWidget(
                        controller: controller.genderTextController,
                        lable: 'Gender'),
                    TextFieldWidget(
                        controller: controller.descriptionTextController,
                        lable: 'Description'),
                    TextFieldWidget(
                        controller: controller.buildingIDTextController,
                        lable: 'Buiding ID'),
                    ElevatedButton(
                      child: const Text('Sign Up'),
                      onPressed: () {
                        controller.signUp();
                      },
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: Obx(() {
                  if (controller.signUpState.value == SignUpState.loading) {
                    return Center(
                      child: Lottie.asset(
                        'assets/videos/splash.json',
                        height: 100,
                        width: 100,
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
