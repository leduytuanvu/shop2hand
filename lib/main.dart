import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/presentation/navigation/pages.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
import 'package:shop2hand/app/util/dependency.dart';
import 'package:shop2hand/presentation/bindings/splash_binding.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initServices();
  runApp(const Shop2Hand());
}

class Shop2Hand extends StatelessWidget {
  const Shop2Hand({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.splash,
      initialBinding: SplashBinding(),
      getPages: Pages.pages,
    );
  }
}

initServices() async {
  log('Starting services ...');
  await Get.putAsync(() => LocalStorageService.init());
  log('All services started ...');
}
