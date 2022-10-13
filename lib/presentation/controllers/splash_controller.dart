import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shop2hand/app/services/local_storage_service.dart';
import 'package:shop2hand/data/network/api/post_api.dart';
import 'package:shop2hand/data/network/dio/dio_client.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';
import 'package:shop2hand/data/repositories/post_repository.dart';
import 'package:shop2hand/presentation/navigation/routers.dart';

class SplashController extends GetxController {
  final AuthenticationRepository authenticationRepository;
  SplashController({required this.authenticationRepository});

  @override
  void onReady() {
    validateSession();
    super.onReady();
  }

  Future<void> validateSession() async {
    await Future.delayed(const Duration(seconds: 3));
    try {
      PostAPI postAPI = PostAPI(dioClient: DioClient(Get.find<Dio>()));
      PostRepository postRepository = PostRepository(postAPI);
      postRepository.getAllPost();
      final token = LocalStorageService.getToken;
      if (token != null) {
        final response = await authenticationRepository.getUserFromToken(token);
        if (response != null) {
          LocalStorageService.setUser = response;
          Get.offAllNamed(Routers.home);
        }
      }
      Get.offAllNamed(Routers.signIn);
    } catch (e) {
      log(e.toString());
    }
  }
}
