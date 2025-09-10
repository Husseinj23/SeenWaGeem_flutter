import 'package:injectable/injectable.dart';

import '../../entities/leaderboard_user.dart';
import '../../repositories/leaderboard_repository.dart';

@injectable
class GetTopUsersUseCase {
  final LeaderboardRepository _repository;
  GetTopUsersUseCase(this._repository);
  Future<List<LeaderboardUser>> call({int limit = 10}) => _repository.getTopUsers(limit: limit);
}


