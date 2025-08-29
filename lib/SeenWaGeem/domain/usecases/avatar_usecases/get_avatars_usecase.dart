import 'package:injectable/injectable.dart';

import '../../../domain/repositories/image_repository.dart';

@injectable
class GetAvatarsUseCase {
  final ImageRepository _repository;

  GetAvatarsUseCase(this._repository);

  Future<List<String>> call() {
    return _repository.getAvatars();
  }
}
