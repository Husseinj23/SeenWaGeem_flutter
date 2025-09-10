import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/data/datasources/remote/leaderboard_remote_data_source.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/data/repositories/leaderboard_repository_impl.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/domain/repositories/leaderboard_repository.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/core/network/dio_client.dart';
import 'package:seen_wa_geem_flutter/SeenWaGeem/data/datasources/local/auth_local_data_source.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  LeaderboardRepository get leaderboardRepository => LeaderboardRepositoryImpl(LeaderboardRemoteDataSourceImpl(DioClient(dio, AuthLocalDataSourceImpl(secureStorage))));
}
