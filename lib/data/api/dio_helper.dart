import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioHelper {
  DioHelper(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true),
      );
    }
  }

  late Dio dio;

  void setToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void removeToken() {
    dio.options.headers.remove('Authorization');
  }
}
