import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/leaderboard/get_leaderboard_usecase.dart';
import '../../../domain/usecases/leaderboard/get_top_users_usecase.dart';
import 'leaderboard_event.dart';
import 'leaderboard_state.dart';

@injectable
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final GetLeaderboardUseCase _getLeaderboardUseCase;
  final GetTopUsersUseCase _getTopUsersUseCase;

  LeaderboardBloc(this._getLeaderboardUseCase, this._getTopUsersUseCase)
      : super(const LeaderboardState.initial()) {
    on<LeaderboardEvent>((event, emit) async {
      await event.map(
        fetchLeaderboard: (e) => _handleFetchLeaderboard(emit),
        fetchTopUsers: (e) => _handleFetchTopUsers(e.limit, emit),
      );
    });
  }

  Future<void> _handleFetchLeaderboard(Emitter<LeaderboardState> emit) async {
    emit(const LeaderboardState.loading());
    try {
      final users = await _getLeaderboardUseCase.call();
      emit(LeaderboardState.success(users: users, isTopUsers: false));
    } catch (e) {
      emit(LeaderboardState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> _handleFetchTopUsers(int limit, Emitter<LeaderboardState> emit) async {
    emit(const LeaderboardState.loading());
    try {
      final users = await _getTopUsersUseCase.call(limit: limit);
      emit(LeaderboardState.success(users: users, isTopUsers: true));
    } catch (e) {
      emit(LeaderboardState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }
}


