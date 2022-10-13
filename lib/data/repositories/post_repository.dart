import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shop2hand/data/network/api/post_api.dart';
import 'package:shop2hand/data/network/dio/dio_exception.dart';
import 'package:shop2hand/domain/entities/post.dart';

class PostRepository {
  late final PostAPI postAPI;

  PostRepository(this.postAPI);

  Future<List<Post?>?> getAllPost() async {
    try {
      final response = await postAPI.getPostsApi();
      final posts =
          // (response.data['data'] as List).map((e) => Post.fromJson(e)).toList();
          (response.data as List).map((e) => Post.fromJson(e)).toList();
      log(posts.toString());
      return posts;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
