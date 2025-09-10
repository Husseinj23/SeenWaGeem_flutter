import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class UpdateUserAvatarUseCase {
  final AuthRepository _repository;
  UpdateUserAvatarUseCase(this._repository);
  Future<AuthUser> call(String avatar) => _repository.updateUserAvatar(avatar);
}


