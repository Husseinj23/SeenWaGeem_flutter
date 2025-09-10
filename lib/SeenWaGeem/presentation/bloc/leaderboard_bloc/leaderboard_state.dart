import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/leaderboard_user.dart';

part 'leaderboard_state.freezed.dart';

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.initial() = _Initial;
  const factory LeaderboardState.loading() = _Loading;
  const factory LeaderboardState.success({
    required List<LeaderboardUser> users,
    @Default(false) bool isTopUsers,
  }) = _Success;
  const factory LeaderboardState.failure(String message) = _Failure;
}


