import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eizo_mushi/data/model/error/error_model.dart';

class DioErrorHandler {
  static ErrorResponse extractError(DioException e, {StackTrace? stackTrace}) {
    log('dio error ==== $stackTrace');
    log(e.toString());
    if (e.error is SocketException) {
      return ErrorResponse(
        status: 'error',
        message: 'Connection problem',
        code: '500',
      );
    }

    final error = e.response?.data;
    if (error is Map<String, dynamic>) {
      return ErrorResponse.fromJson(error);
    }
    return ErrorResponse(
      status: 'error',
      message: 'An error occurred',
      code: '500',
    );
  }
}
