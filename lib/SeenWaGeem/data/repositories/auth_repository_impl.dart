import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/local/auth_local_data_source.dart';
import '../../data/datasources/remote/auth_remote_data_source.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepositoryImpl(this._remoteDataSource, this._localDataSource);

  Future<AuthUser> _handleSocialSignIn(
    Future<User> Function() firebaseSignIn,
  ) async {
    try {
      final firebaseUser = await firebaseSignIn();

      final backendResponse = await _remoteDataSource.loginWithBackend({
        'name': firebaseUser.displayName ?? 'New User',
        'email': firebaseUser.email,
        'firebase_uid': firebaseUser.uid,
      });

      // ADDED FOR DEBUGGING: This will print the exact server response
      print('--- SERVER RESPONSE FROM /login ---');
      print(backendResponse);
      print('--- END OF SERVER RESPONSE ---');

      final customToken = backendResponse['token'];
      if (customToken == null) {
        throw Exception('Backend token not found.');
      }
      await _localDataSource.saveToken(customToken);

      final userJson = backendResponse['user'];
      if (userJson == null) {
        throw Exception('Backend user data not found.');
      }

      return AuthUser.fromJson(userJson);
    } catch (e) {
      throw Exception('Sign in failed: ${e.toString()}');
    }
  }

  @override
  Future<AuthUser> signInWithGoogle() =>
      _handleSocialSignIn(_remoteDataSource.signInWithGoogleFirebase);

  @override
  Future<AuthUser> signInWithFacebook() =>
      _handleSocialSignIn(_remoteDataSource.signInWithFacebookFirebase);

  @override
  Future<AuthUser> signInWithTwitter() =>
      _handleSocialSignIn(_remoteDataSource.signInWithTwitterFirebase);

  @override
  Future<void> signOut() async {
    await _remoteDataSource.signOutFirebase();
    await _localDataSource.deleteToken();
  }
}
