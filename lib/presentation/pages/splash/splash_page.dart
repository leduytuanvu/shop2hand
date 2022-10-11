import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:shop2hand/presentation/pages/splash/splash_controller.dart';

class SplashPage extends GetWidget<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
