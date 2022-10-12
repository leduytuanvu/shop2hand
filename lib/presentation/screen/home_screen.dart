import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/presentation/controllers/sing_in_controller.dart';

class HomeScreen extends GetWidget<SignInController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            LocalStorageService().clearAllData();
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}
