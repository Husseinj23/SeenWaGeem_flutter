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
    Future<Map<String, dynamic>> Function()
    signInMethod, // Changed parameter type
  ) async {
    try {
      // Get both Firebase user and social data
      final result = await signInMethod();
      final socialData = result['socialData'] as Map<String, dynamic>;
      // Format data the way the backend wants it (like React Native does)
      final requestData = {
        'username': '${socialData['provider']}:${socialData['providerId']}',
        'password': socialData['providerId'],
        'firstName': socialData['firstName'],
        'lastName': socialData['lastName'],
        // Add additional fields that might be expected
        'email': socialData['email'] ?? '',
        'provider': socialData['provider'],
        'providerId': socialData['providerId'],
      };
      final backendResponse = await _remoteDataSource.loginWithBackend(
        requestData,
      );
      print('DEBUG: Backend response structure: ${backendResponse.keys}');
      print('DEBUG: Full backend response: $backendResponse');
      final customToken = backendResponse['token'];
      if (customToken == null) {
        throw Exception('Backend token not found.');
      }
      await _localDataSource.saveToken(customToken);
      // The backend returns user data in the 'profile' key
      final userJson = backendResponse['profile'];
      print('DEBUG: User JSON: $userJson');
      if (userJson == null) {
        print('DEBUG: Available keys in response: ${backendResponse.keys}');
        throw Exception('Backend user data not found. Available keys: ${backendResponse.keys}');
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
