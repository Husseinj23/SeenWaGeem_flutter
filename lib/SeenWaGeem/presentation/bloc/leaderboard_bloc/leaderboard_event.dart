import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_event.freezed.dart';

@freezed
abstract class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.fetchLeaderboard() = _FetchLeaderboard;
  const factory LeaderboardEvent.fetchTopUsers({@Default(10) int limit}) = _FetchTopUsers;
}


