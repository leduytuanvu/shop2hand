import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/controllers/home_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  // final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    final user = controller.user.value!;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(user.fullName ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
