import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class ImageRemoteDataSource {
  Future<List<String>> getAvatars();
}

@LazySingleton(as: ImageRemoteDataSource)
class ImageRemoteDataSourceImpl implements ImageRemoteDataSource {
  final Dio _dio;

  ImageRemoteDataSourceImpl(this._dio);

  @override
  Future<List<String>> getAvatars() async {
    final response = await _dio.get(
      '/s3/directory',
      queryParameters: {'foldername': 'avatars'},
    );
    final List<dynamic> data = response.data['data'];
    return data.map((item) => item.toString()).toList();
  }
}
