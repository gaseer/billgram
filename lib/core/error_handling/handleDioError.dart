import 'package:dio/dio.dart';

class DioExceptionHandle {
  static String handleDioException({required DioException dioException}) {
    if (dioException.type == DioExceptionType.badResponse) {
      if (dioException.response?.statusCode == 404) {
        return "Error: 404";
      } else {
        return "Error: ${dioException.response?.statusCode}";
      }
    } else if (dioException.type == DioExceptionType.connectionTimeout ||
        dioException.type == DioExceptionType.receiveTimeout ||
        dioException.type == DioExceptionType.sendTimeout) {
      return "Connection timeout!";
    } else {
      return "Error: ${dioException.message}";
    }
  }
}
