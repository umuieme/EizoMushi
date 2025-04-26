import 'package:dio/dio.dart';
import 'package:eizo_mushi/data/api/dio_helper.dart';
import 'package:eizo_mushi/data/api/error_handler.dart';
import 'package:eizo_mushi/data/model/error/error_model.dart';
import 'package:eizo_mushi/data/model/response_wrapper/response_model.dart';
import 'package:fpdart/fpdart.dart';

class ApiService {
  factory ApiService(DioHelper helper) {
    return ApiService._internal(helper);
  }

  ApiService._internal(this._dioHelper) : _dio = _dioHelper.dio;
  final Dio _dio;
  final DioHelper _dioHelper;

  void setToken(String token) {
    _dioHelper.setToken(token);
  }

  Future<Either<ErrorResponse, ResponseModel<T>>> _request<T>(
    Future<Response<Map<String, Object?>>> Function() request,
    T Function(Map<String, Object?> json) fromJson,
  ) async {
    try {
      final response = await request();
      if (response.data != null) {
        final parsedResponse = ResponseModel.fromJson(
          response.data!,
          (json) => fromJson(json! as Map<String, Object?>),
        );
        return right(parsedResponse);
      }
      return left(ErrorResponse.withMessage('Invalid response'));
    } on DioException catch (e) {
      return left(DioErrorHandler.extractError(e));
    }
  }

  Future<Either<ErrorResponse, T>> get<T>({
    required String endpoint,
    required T Function(Map<String, Object?> json) fromJson,
    Map<String, Object?>? queryParams,
  }) async {
    final result = await _request(
      () => _dio.get<Map<String, Object?>>(
        endpoint,
        queryParameters: queryParams,
      ),
      fromJson,
    );
    return result.fold(
      left,
      (response) => right(response.results),
    );
  }

  Future<Either<ErrorResponse, ResponseModel<T>>> post<T>({
    required String endpoint,
    required Map<String, Object?> data,
    required T Function(Map<String, Object?> json) fromJson,
  }) async {
    return _request(
      () => _dio.post<Map<String, Object?>>(endpoint, data: data),
      fromJson,
    );
  }

  Future<Either<ErrorResponse, T>> put<T>(
    String endpoint,
    Map<String, Object?> data,
    T Function(Map<String, Object?> json) fromJson,
  ) async {
    final result = await _request(
      () => _dio.put<Map<String, Object?>>(endpoint, data: data),
      fromJson,
    );
    return result.fold(
      left,
      (response) => right(response.results),
    );
  }

  Future<Either<ErrorResponse, bool>> delete(String endpoint) async {
    try {
      final response = await _dio.delete<Map<String, Object?>>(endpoint);
      if (response.statusCode == 200) {
        return right(true);
      }
      return left(ErrorResponse.withMessage('Failed to delete'));
    } on DioException catch (e) {
      return left(DioErrorHandler.extractError(e));
    }
  }
}
