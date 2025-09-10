import 'package:dio/dio.dart' show DioException, Options;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/dio_client.dart';

abstract class AuthRemoteDataSource {
  Future<Map<String, dynamic>>
  signInWithGoogleFirebase(); // Changed return type
  Future<Map<String, dynamic>>
  signInWithFacebookFirebase(); // Changed return type
  Future<Map<String, dynamic>>
  signInWithTwitterFirebase(); // Changed return type
  Future<Map<String, dynamic>> loginWithBackend(Map<String, dynamic> userData);
  Future<Map<String, dynamic>> createUser(Map<String, dynamic> userData);
  Future<Map<String, dynamic>> checkUserExists(String username);
  Future<Map<String, dynamic>> updateUserAvatar(String avatar);
  Future<void> signOutFirebase();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final DioClient _dioClient;
  AuthRemoteDataSourceImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
    this._dioClient,
  );

  @override
  Future<Map<String, dynamic>> signInWithGoogleFirebase() async {
    // Get Google user info FIRST
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) throw Exception('Google sign in aborted.');

    // Save the important data before Firebase changes it
    final socialData = {
      'provider': 'google',
      'providerId': googleUser.id,
      'firstName': googleUser.displayName?.split(' ').firstOrNull ?? '',
      'lastName': googleUser.displayName?.split(' ').skip(1).join(' ') ?? '',
      'email': googleUser.email ?? '',
    };

    // Now do Firebase stuff
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential = await _firebaseAuth.signInWithCredential(credential);

    // Return both pieces of info
    return {'firebaseUser': userCredential.user!, 'socialData': socialData};
  }

  @override
  Future<Map<String, dynamic>> signInWithFacebookFirebase() async {
    final result = await _facebookAuth.login();
    if (result.status == LoginStatus.success) {
      // Get Facebook user info FIRST
      final userData = await _facebookAuth.getUserData();

      final socialData = {
        'provider': 'fb',
        'providerId': userData['id'],
        'firstName': userData['first_name'] ?? '',
        'lastName': userData['last_name'] ?? '',
        'email': userData['email'] ?? '',
      };

      // Now do Firebase stuff
      final credential = FacebookAuthProvider.credential(
        result.accessToken!.token,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );

      return {'firebaseUser': userCredential.user!, 'socialData': socialData};
    } else {
      throw Exception('Facebook sign in failed: ${result.message}');
    }
  }

  @override
  Future<Map<String, dynamic>> signInWithTwitterFirebase() async {
    final provider = TwitterAuthProvider();
    final userCredential = await _firebaseAuth.signInWithProvider(provider);

    if (userCredential.user == null) {
      throw Exception('Firebase user not found.');
    }

    final socialData = {
      'provider': 'twitter',
      'providerId': userCredential.user!.uid,
      'firstName': userCredential.user!.displayName?.split(' ').first ?? 'New',
      'lastName':
          userCredential.user!.displayName?.split(' ').skip(1).join(' ') ??
          'User',
      'email': userCredential.user!.email ?? '',
    };

    return {'firebaseUser': userCredential.user!, 'socialData': socialData};
  }

  @override
  Future<Map<String, dynamic>> loginWithBackend(
    Map<String, dynamic> userData,
  ) async {
    print('DEBUG: Sending to backend: $userData');
    print('DEBUG: Full URL: ${_dioClient.dio.options.baseUrl}/login');

    try {
      final response = await _dioClient.dio.post(
        '/login',
        data: userData,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      print('DEBUG: Backend response status: ${response.statusCode}');
      print('DEBUG: Backend response data: ${response.data}');
      return response.data;
    } catch (e) {
      print('DEBUG: Backend request failed: $e');
      if (e is DioException) {
        print('DEBUG: Dio error type: ${e.type}');
        print('DEBUG: Dio error response: ${e.response?.data}');
        print('DEBUG: Dio error status: ${e.response?.statusCode}');
      }
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> createUser(
    Map<String, dynamic> userData,
  ) async {
    print('DEBUG: Creating user with data: $userData');
    
    try {
      final response = await _dioClient.dio.post(
        '/login',
        data: userData,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      print('DEBUG: Create user response status: ${response.statusCode}');
      print('DEBUG: Create user response data: ${response.data}');
      return response.data;
    } catch (e) {
      print('DEBUG: Create user request failed: $e');
      if (e is DioException) {
        print('DEBUG: Dio error type: ${e.type}');
        print('DEBUG: Dio error response: ${e.response?.data}');
        print('DEBUG: Dio error status: ${e.response?.statusCode}');
      }
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> checkUserExists(String username) async {
    print('DEBUG: Checking if user exists: $username');
    
    try {
      final response = await _dioClient.dio.get(
        '/user/check',
        queryParameters: {'username': username},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      print('DEBUG: Check user response status: ${response.statusCode}');
      print('DEBUG: Check user response data: ${response.data}');
      return response.data;
    } catch (e) {
      print('DEBUG: Check user request failed: $e');
      if (e is DioException) {
        print('DEBUG: Dio error type: ${e.type}');
        print('DEBUG: Dio error response: ${e.response?.data}');
        print('DEBUG: Dio error status: ${e.response?.statusCode}');
      }
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> updateUserAvatar(String avatar) async {
    print('DEBUG: Updating user avatar: $avatar');
    
    try {
      final response = await _dioClient.dio.put(
        '/avatar',
        data: {'avatar': avatar},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
        ),
      );
      print('DEBUG: Update avatar response status: ${response.statusCode}');
      print('DEBUG: Update avatar response data: ${response.data}');
      return response.data;
    } catch (e) {
      print('DEBUG: Update avatar request failed: $e');
      if (e is DioException) {
        print('DEBUG: Dio error type: ${e.type}');
        print('DEBUG: Dio error response: ${e.response?.data}');
        print('DEBUG: Dio error status: ${e.response?.statusCode}');
      }
      rethrow;
    }
  }

  @override
  Future<void> signOutFirebase() async {
    await _googleSignIn.signOut();
    await _facebookAuth.logOut();
    await _firebaseAuth.signOut();
  }
}
