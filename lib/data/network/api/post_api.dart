import 'package:dio/dio.dart';
import 'package:shop2hand/data/network/api/constant.dart';
import 'package:shop2hand/data/network/dio/dio_client.dart';

class PostAPI {
  late final DioClient dioClient;

  PostAPI({required this.dioClient});

  // Future<Response> addUserApi(String name, String job) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.users,
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<Response> getPostsApi() async {
    try {
      final Response response = await dioClient.get(Endpoints.posts);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Future<Response> updateUserApi(int id, String name, String job) async {
  //   try {
  //     final Response response = await dioClient.put(
  //       Endpoints.users + '/$id',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<void> deleteUserApi(int id) async {
  //   try {
  //     await dioClient.delete(Endpoints.users + '/$id');
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
