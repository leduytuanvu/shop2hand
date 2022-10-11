import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop2hand/presentation/navigation/pages.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
import 'package:shop2hand/presentation/main_binding.dart';

void main() async {
  // DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  // await initServices();
  runApp(const Shop2Hand());
}

class Shop2Hand extends StatelessWidget {
  const Shop2Hand({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.splash,
      initialBinding: MainBinding(),
      getPages: Pages.pages,
    );
  }
}

// initServices() async {
//   log('starting services ...');
//   await Get.putAsync(() => LocalStorageService().init());
//   log('All services started...');
// }
