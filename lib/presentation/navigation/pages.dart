import 'package:get/get.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
import 'package:shop2hand/presentation/pages/home/home_page.dart';
import 'package:shop2hand/presentation/pages/signin/signin_page.dart';
import 'package:shop2hand/presentation/pages/splash/splash_binding.dart';
import 'package:shop2hand/presentation/pages/splash/splash_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routers.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routers.signIn,
      page: () => const SignInPage(),
    ),
    GetPage(
      name: Routers.home,
      page: () => const HomePage(),
    ),
  ];
}
