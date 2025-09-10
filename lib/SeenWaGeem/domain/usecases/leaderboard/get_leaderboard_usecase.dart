import 'package:injectable/injectable.dart';

import '../../entities/leaderboard_user.dart';
import '../../repositories/leaderboard_repository.dart';

@injectable
class GetLeaderboardUseCase {
  final LeaderboardRepository _repository;
  GetLeaderboardUseCase(this._repository);
  Future<List<LeaderboardUser>> call() => _repository.getLeaderboard();
}


