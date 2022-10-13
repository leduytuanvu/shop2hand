import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:shop2hand/app/config/app_colors.dart';
import 'package:shop2hand/presentation/controllers/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: Center(
        child: Lottie.asset(
          'assets/videos/splash.json',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
