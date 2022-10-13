import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
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
              SizedBox(
                height: size.height,
                child: Column(
                  children: [
                    TextFieldWidget(
                        controller: controller.userNameTextController,
                        lable: 'Username'),
                    TextFieldWidget(
                        controller: controller.passwordTextController,
                        lable: 'Password'),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 40,
                      width: size.width,
                      child: ElevatedButton(
                        child: const Text('SIGN IN'),
                        onPressed: () => controller.signIn(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 40,
                      width: size.width,
                      child: ElevatedButton(
                        child: const Text('SIGN UP'),
                        onPressed: () => Get.offAllNamed(Routers.signUp),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: Obx(() {
                  if (controller.signInState.value == SignInState.loading) {
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
