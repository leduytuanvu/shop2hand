// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:shop2hand/data/network/api/post_api.dart';
// import 'package:shop2hand/data/network/dio/dio_client.dart';
// import 'package:shop2hand/data/repositories/post_repository.dart';

// final getIt = GetIt.instance;

// Future<void> setup() async {
//   getIt.registerSingleton(Dio());
//   getIt.registerSingleton(DioClient(getIt<Dio>()));
//   getIt.registerSingleton(PostAPI(dioClient: getIt<DioClient>()));
//   getIt.registerSingleton(PostRepository(getIt.get<PostAPI>()));
// }
