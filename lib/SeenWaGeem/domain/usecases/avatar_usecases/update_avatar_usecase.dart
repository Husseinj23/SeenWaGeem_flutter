import 'package:injectable/injectable.dart';

import '../../../domain/repositories/image_repository.dart';

@injectable
class UpdateAvatarUseCase {
  final ImageRepository _repository;

  UpdateAvatarUseCase(this._repository);

  Future<void> call(String avatarUrl) {
    return _repository.updateAvatar(avatarUrl);
  }
}


