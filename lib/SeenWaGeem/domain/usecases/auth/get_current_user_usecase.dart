import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class GetCurrentUserUseCase {
  final AuthRepository _repository;
  GetCurrentUserUseCase(this._repository);
  Future<AuthUser?> call() => _repository.getCurrentUser();
}


