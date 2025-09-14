import 'package:injectable/injectable.dart';

import '../../core/session/session_manager.dart';
import '../../data/datasources/local/auth_local_data_source.dart';
import '../../data/datasources/remote/auth_remote_data_source.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final SessionManager _sessionManager;

  AuthRepositoryImpl(this._remoteDataSource, this._localDataSource, this._sessionManager);

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
      
      // Save session data for auto-login
      await _sessionManager.saveSession(
        token: customToken,
        userData: userJson,
      );
      
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
  Future<AuthUser> createUser(Map<String, dynamic> userData) async {
    try {
      final backendResponse = await _remoteDataSource.createUser(userData);
      final customToken = backendResponse['token'];
      if (customToken == null) {
        throw Exception('Backend token not found.');
      }
      await _localDataSource.saveToken(customToken);
      final userJson = backendResponse['profile'];
      if (userJson == null) {
        throw Exception('Backend user data not found.');
      }
      return AuthUser.fromJson(userJson);
    } catch (e) {
      throw Exception('User creation failed: ${e.toString()}');
    }
  }

  @override
  Future<bool> checkUserExists(String username) async {
    try {
      final response = await _remoteDataSource.checkUserExists(username);
      return response['exists'] ?? false;
    } catch (e) {
      print('DEBUG: Error checking user existence: $e');
      return false;
    }
  }

  @override
  Future<AuthUser> updateUserAvatar(String avatar) async {
    try {
      final response = await _remoteDataSource.updateUserAvatar(avatar);
      final userJson = response['profile'] ?? response;
      return AuthUser.fromJson(userJson);
    } catch (e) {
      throw Exception('Avatar update failed: ${e.toString()}');
    }
  }

  @override
  Future<AuthUser?> getCurrentUser() async {
    try {
      final token = await _localDataSource.getToken();
      if (token == null) return null;
      
      // For now, we'll return null if no token exists
      // In a real implementation, you might want to validate the token
      // and fetch user data from the backend
      return null;
    } catch (e) {
      print('DEBUG: Error getting current user: $e');
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await _remoteDataSource.signOutFirebase();
    await _localDataSource.deleteToken();
    await _sessionManager.clearSession();
  }
}
