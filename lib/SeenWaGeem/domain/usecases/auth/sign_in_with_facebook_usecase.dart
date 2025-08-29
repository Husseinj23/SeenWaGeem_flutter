import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class SignInWithFacebookUseCase {
  final AuthRepository _repository;
  SignInWithFacebookUseCase(this._repository);
  Future<AuthUser> call() => _repository.signInWithFacebook();
}
