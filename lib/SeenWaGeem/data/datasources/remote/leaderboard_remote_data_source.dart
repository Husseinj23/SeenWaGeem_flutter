import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/dio_client.dart';

abstract class LeaderboardRemoteDataSource {
  Future<Map<String, dynamic>> getLeaderboard();
}

@LazySingleton(as: LeaderboardRemoteDataSource)
class LeaderboardRemoteDataSourceImpl implements LeaderboardRemoteDataSource {
  final DioClient _dioClient;

  LeaderboardRemoteDataSourceImpl(this._dioClient);

  @override
  Future<Map<String, dynamic>> getLeaderboard() async {
    try {
      final response = await _dioClient.dio.get(
        '/user/leaderboard',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      
      // The API returns a single object
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      } else {
        return {};
      }
    } catch (e) {
      print('DEBUG: Get leaderboard failed: $e');
      rethrow;
    }
  }
}
