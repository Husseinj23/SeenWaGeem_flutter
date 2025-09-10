import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_user.freezed.dart';
part 'leaderboard_user.g.dart';

@freezed
class LeaderboardUser with _$LeaderboardUser {
  const factory LeaderboardUser({
    required String id,
    required String username,
    required String firstName,
    required String lastName,
    required String avatar,
    required int totalScore,
    required int rank,
    @Default(false) bool isOnline,
  }) = _LeaderboardUser;

  factory LeaderboardUser.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserFromJson(json);
}
