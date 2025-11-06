import 'package:dio/dio.dart';

class Failure {
  final String error;
  Failure(this.error);
}
class ServerFailure extends Failure{
  ServerFailure(super.error);

 factory ServerFailure.fromdioExceptino(DioException dioException)
 {
  switch(dioException.type) {
    case DioExceptionType.connectionTimeout:
     return ServerFailure('error');
    case DioExceptionType.sendTimeout:
     return ServerFailure('error');
    case DioExceptionType.receiveTimeout:
     return ServerFailure('error');
    case DioExceptionType.badCertificate:
     return ServerFailure('error');
    case DioExceptionType.badResponse:
      return ServerFailure('error');
    case DioExceptionType.cancel:
     return ServerFailure('error');
    case DioExceptionType.connectionError:
     return ServerFailure('error');
    case DioExceptionType.unknown:
     return ServerFailure('error');
  }
 }
}