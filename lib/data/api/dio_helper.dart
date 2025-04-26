import 'package:dio/dio.dart';
import 'package:eizo_mushi/data/api/api_endpoints.dart';
import 'package:flutter/foundation.dart';

class DioHelper {
  factory DioHelper() {
    _instance ??= DioHelper._internal();
    return _instance!;
  }
  DioHelper._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: Api.baseUrl,
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
  static DioHelper? _instance = DioHelper._internal();

  late Dio dio;

  void setToken(String token) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void removeToken() {
    dio.options.headers.remove('Authorization');
  }
}
