import '../entities/leaderboard_user.dart';

abstract class LeaderboardRepository {
  Future<List<LeaderboardUser>> getLeaderboard();
  Future<List<LeaderboardUser>> getTopUsers({int limit = 10});
}


