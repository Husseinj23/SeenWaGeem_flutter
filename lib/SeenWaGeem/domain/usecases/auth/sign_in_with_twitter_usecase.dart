import 'package:injectable/injectable.dart';

import '../../entities/auth_user.dart';
import '../../repositories/auth_repository.dart';

@injectable
class SignInWithTwitterUseCase {
  final AuthRepository _repository;
  SignInWithTwitterUseCase(this._repository);
  Future<AuthUser> call() => _repository.signInWithTwitter();
}
