import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/local/auth_local_data_source.dart';

@lazySingleton
class DioClient {
  final Dio dio;
  final AuthLocalDataSource authLocalDataSource;

  DioClient(this.dio, this.authLocalDataSource) {
    dio.options.baseUrl = 'https://appswg.com/app';
    dio.options.followRedirects = true;
    dio.options.validateStatus = (status) {
      return status != null && status < 500;
    };
    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);
    dio.interceptors.add(AuthInterceptor(authLocalDataSource));
  }
}

class AuthInterceptor extends Interceptor {
  final AuthLocalDataSource _authLocalDataSource;

  AuthInterceptor(this._authLocalDataSource);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _authLocalDataSource.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
