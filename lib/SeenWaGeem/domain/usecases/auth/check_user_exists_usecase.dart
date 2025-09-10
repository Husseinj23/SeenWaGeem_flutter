import 'package:injectable/injectable.dart';

import '../../repositories/auth_repository.dart';

@injectable
class CheckUserExistsUseCase {
  final AuthRepository _repository;
  CheckUserExistsUseCase(this._repository);
  Future<bool> call(String username) => _repository.checkUserExists(username);
}

