import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class ImageRemoteDataSource {
  Future<List<String>> getAvatars();
  Future<void> updateAvatar(String avatarUrl);
}

@LazySingleton(as: ImageRemoteDataSource)
class ImageRemoteDataSourceImpl implements ImageRemoteDataSource {
  final Dio _dio;

  ImageRemoteDataSourceImpl(this._dio);

  @override
  Future<List<String>> getAvatars() async {
    try {
      // Try to fetch from API first
      final response = await _dio.get(
        '/s3/directory',
        queryParameters: {'foldername': 'avatar'},
      );
      final List<dynamic> data = response.data['data'];
      
      // Convert filenames to full URLs using the download endpoint
      final String baseUrl = _dio.options.baseUrl;
      final List<String> avatarUrls = data.map((item) {
        final filename = item.toString();
        // Construct the full URL using the download endpoint with query parameters
        return '$baseUrl/download?foldername=avatar&filename=$filename';
      }).toList();
      
      return avatarUrls;
    } catch (e) {
      // Fallback to server-based avatar URLs that match the screenshot
      return _getServerAvatars();
    }
  }

  @override
  Future<void> updateAvatar(String avatarUrl) async {
    // Extract filename from the full URL
    final filename = avatarUrl.split('filename=').last;
    
    await _dio.put(
      '/avatar',
      data: {'avatar': filename},
    );
  }

  // Server-based avatar URLs using the actual server structure
  List<String> _getServerAvatars() {
    final String baseUrl = 'http://appswg.com/app';
    return [
      // Server avatars from 1.png to 12.png (no default)
      '$baseUrl/download?foldername=avatar&filename=1.png',
      '$baseUrl/download?foldername=avatar&filename=2.png',
      '$baseUrl/download?foldername=avatar&filename=3.png',
      '$baseUrl/download?foldername=avatar&filename=4.png',
      '$baseUrl/download?foldername=avatar&filename=5.png',
      '$baseUrl/download?foldername=avatar&filename=6.png',
      '$baseUrl/download?foldername=avatar&filename=7.png',
      '$baseUrl/download?foldername=avatar&filename=8.png',
      '$baseUrl/download?foldername=avatar&filename=9.png',
      '$baseUrl/download?foldername=avatar&filename=10.png',
      '$baseUrl/download?foldername=avatar&filename=11.png',
      '$baseUrl/download?foldername=avatar&filename=12.png',
    ];
  }
}
