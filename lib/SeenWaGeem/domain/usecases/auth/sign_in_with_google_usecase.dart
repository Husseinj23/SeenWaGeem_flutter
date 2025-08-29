import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class SignInWithGoogleUseCase {
  final AuthRepository _repository;
  SignInWithGoogleUseCase(this._repository);
  Future<AuthUser> call() => _repository.signInWithGoogle();
}
