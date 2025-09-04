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
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);
    dio.interceptors.add(AuthInterceptor(authLocalDataSource));

    // Add logging interceptor for debugging
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => print('DIO: $obj'),
      ),
    );
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
    // Don't add auth header for login requests
    if (!options.path.contains('/login')) {
      final token = await _authLocalDataSource.getToken();
      if (token != null) {
        // Backend expects the raw token without the 'Bearer' prefix
        options.headers['Authorization'] = token;
      }
    }
    super.onRequest(options, handler);
  }
}
