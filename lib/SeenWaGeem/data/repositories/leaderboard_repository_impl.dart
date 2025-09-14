import 'package:seen_wa_geem_flutter/SeenWaGeem/domain/entities/leaderboard_user.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/domain/repositories/leaderboard_repository.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/data/datasources/remote/leaderboard_remote_data_source.dart';

class LeaderboardRepositoryImpl implements LeaderboardRepository {
  final LeaderboardRemoteDataSource _remoteDataSource;

  LeaderboardRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<LeaderboardUser>> getLeaderboard() async {
    try {
      final data = await _remoteDataSource.getLeaderboard();
      return _parseLeaderboardData([data]); // Wrap single map in list
    } catch (e) {
      // Return mock data for testing
      print('DEBUG: Using mock leaderboard data due to error: $e');
      return _getMockLeaderboardData();
    }
  }

  @override
  Future<List<LeaderboardUser>> getTopUsers({int limit = 3}) async {
    final allUsers = await getLeaderboard();
    return allUsers.take(limit).toList();
  }

  List<LeaderboardUser> _parseLeaderboardData(List<Map<String, dynamic>> data) {
    final List<LeaderboardUser> allUsers = [];
    
    // The API returns a single object with allUsersLevels
    if (data.isNotEmpty) {
      final responseData = data.first;
      
      if (responseData.containsKey('allUsersLevels')) {
        final allUsersLevels = responseData['allUsersLevels'] as Map<String, dynamic>;
        
        for (final level in allUsersLevels.keys) {
          final users = allUsersLevels[level] as List<dynamic>;
          
          for (final userData in users) {
            final user = userData as Map<String, dynamic>;
            allUsers.add(LeaderboardUser(
              id: user['userId']?.toString() ?? '',
              username: user['name']?.toString() ?? '',
              firstName: (user['name']?.toString() ?? '').split(' ').first,
              lastName: (user['name']?.toString() ?? '').split(' ').length > 1 
                  ? (user['name']?.toString() ?? '').split(' ').skip(1).join(' ')
                  : '',
              avatar: user['avatar']?.toString() ?? '',
              totalScore: (user['totalScore'] is int) ? user['totalScore'] as int : 0,
              rank: allUsers.length + 1, // Will be sorted later
              isOnline: false, // Not provided in API
            ));
          }
        }
      }
    }
    
    // Sort by score and assign ranks
    allUsers.sort((a, b) => b.totalScore.compareTo(a.totalScore));
    
    // Create new list with correct ranks
    final List<LeaderboardUser> rankedUsers = [];
    for (int i = 0; i < allUsers.length; i++) {
      rankedUsers.add(allUsers[i].copyWith(rank: i + 1));
    }
    
    return rankedUsers;
  }

  List<LeaderboardUser> _getMockLeaderboardData() {
    return [
      const LeaderboardUser(
        id: '1',
        username: 'أحمد محمد',
        firstName: 'أحمد',
        lastName: 'محمد',
        avatar: 'avatar1.png',
        totalScore: 1500,
        rank: 1,
        isOnline: true,
      ),
      const LeaderboardUser(
        id: '2',
        username: 'فاطمة علي',
        firstName: 'فاطمة',
        lastName: 'علي',
        avatar: 'avatar2.png',
        totalScore: 1200,
        rank: 2,
        isOnline: true,
      ),
      const LeaderboardUser(
        id: '3',
        username: 'محمد حسن',
        firstName: 'محمد',
        lastName: 'حسن',
        avatar: 'avatar3.png',
        totalScore: 1000,
        rank: 3,
        isOnline: false,
      ),
      const LeaderboardUser(
        id: '4',
        username: 'نور الدين',
        firstName: 'نور',
        lastName: 'الدين',
        avatar: 'avatar4.png',
        totalScore: 800,
        rank: 4,
        isOnline: true,
      ),
      const LeaderboardUser(
        id: '5',
        username: 'سارة أحمد',
        firstName: 'سارة',
        lastName: 'أحمد',
        avatar: 'avatar5.png',
        totalScore: 600,
        rank: 5,
        isOnline: false,
      ),
    ];
  }
}
