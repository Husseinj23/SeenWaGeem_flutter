import '../../domain/entities/auth_user.dart';

abstract class AuthRepository {
  Future<AuthUser> signInWithGoogle();
  Future<AuthUser> signInWithFacebook();
  Future<AuthUser> signInWithTwitter();
  Future<AuthUser> createUser(Map<String, dynamic> userData);
  Future<bool> checkUserExists(String username);
  Future<AuthUser> updateUserAvatar(String avatar);
  Future<AuthUser?> getCurrentUser();
  Future<void> signOut();
}
