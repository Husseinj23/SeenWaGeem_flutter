import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class CreateUserUseCase {
  final AuthRepository _repository;
  CreateUserUseCase(this._repository);
  Future<AuthUser> call(Map<String, dynamic> userData) => _repository.createUser(userData);
}

