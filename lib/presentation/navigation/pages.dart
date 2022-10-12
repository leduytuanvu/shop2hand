import 'package:get/get.dart';
import 'package:shop2hand/presentation/bindings/home_binding.dart';
import 'package:shop2hand/presentation/bindings/signin_binding.dart';
import 'package:shop2hand/presentation/bindings/signup_binding.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';
import 'package:shop2hand/presentation/screen/home_screen.dart';
import 'package:shop2hand/presentation/screen/sign_in_screen.dart';
import 'package:shop2hand/presentation/screen/sign_up_screen.dart';
import 'package:shop2hand/presentation/bindings/splash_binding.dart';
import 'package:shop2hand/presentation/screen/splash_screen.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routers.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routers.signIn,
      page: () => const SignInScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: Routers.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routers.signUp,
      page: () => SignUpScreen(),
      binding: SignUpBinding(),
    ),
  ];
}
