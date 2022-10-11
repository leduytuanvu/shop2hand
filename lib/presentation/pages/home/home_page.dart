import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/pages/signin/singin_controller.dart';

class HomePage extends GetWidget<SignInController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        color: Colors.brown,
      ),
    );
  }
}
