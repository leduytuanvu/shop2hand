import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop2hand/data/network/api/auth_api.dart';
import 'package:shop2hand/data/network/dio/dio_client.dart';
import 'package:shop2hand/data/repositories/auth_repository.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(AuthAPI(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(
    AuthRepository(authAPI: getIt.get<AuthAPI>()),
  );
}
