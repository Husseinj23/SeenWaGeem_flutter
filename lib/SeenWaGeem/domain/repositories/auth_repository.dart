import '../../domain/entities/auth_user.dart';

abstract class AuthRepository {
  Future<AuthUser> signInWithGoogle();
  Future<AuthUser> signInWithFacebook();
  Future<AuthUser> signInWithTwitter();
  Future<void> signOut();
}
