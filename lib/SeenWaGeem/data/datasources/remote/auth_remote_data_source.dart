import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/dio_client.dart';
import '../local/auth_local_data_source.dart';

abstract class AuthRemoteDataSource {
  Future<User> signInWithGoogleFirebase();
  Future<User> signInWithFacebookFirebase();
  Future<User> signInWithTwitterFirebase();
  Future<Map<String, dynamic>> loginWithBackend(Map<String, dynamic> userData);
  Future<void> signOutFirebase();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;
  final Dio _dio;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRemoteDataSourceImpl(
    this._firebaseAuth,
    this._googleSignIn,
    this._facebookAuth,
    this._dio,
    this._authLocalDataSource,
  ) {
    // Add the auth interceptor to the Dio instance
    _dio.interceptors.add(AuthInterceptor(_authLocalDataSource));
  }

  @override
  Future<User> signInWithGoogleFirebase() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) throw Exception('Google sign in aborted.');
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential = await _firebaseAuth.signInWithCredential(credential);
    if (userCredential.user == null)
      throw Exception('Firebase user not found.');
    return userCredential.user!;
  }

  @override
  Future<User> signInWithFacebookFirebase() async {
    final result = await _facebookAuth.login();
    if (result.status == LoginStatus.success) {
      final credential = FacebookAuthProvider.credential(
        result.accessToken!.token,
      );
      final userCredential = await _firebaseAuth.signInWithCredential(
        credential,
      );
      if (userCredential.user == null)
        throw Exception('Firebase user not found.');
      return userCredential.user!;
    } else {
      throw Exception('Facebook sign in failed: ${result.message}');
    }
  }

  @override
  Future<User> signInWithTwitterFirebase() async {
    final provider = TwitterAuthProvider();
    final userCredential = await _firebaseAuth.signInWithProvider(provider);
    if (userCredential.user == null)
      throw Exception('Firebase user not found.');
    return userCredential.user!;
  }

  @override
  Future<Map<String, dynamic>> loginWithBackend(
    Map<String, dynamic> userData,
  ) async {
    final response = await _dio.post('/login', data: userData);
    return response.data;
  }

  @override
  Future<void> signOutFirebase() async {
    await _googleSignIn.signOut();
    await _facebookAuth.logOut();
    await _firebaseAuth.signOut();
  }
}
