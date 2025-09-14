// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/auth_local_data_source.dart' as _i16;
import '../../data/datasources/remote/auth_remote_data_source.dart' as _i28;
import '../../data/datasources/remote/category_remote_data_source.dart' as _i17;
import '../../data/datasources/remote/image_remote_data_source.dart' as _i8;
import '../../data/datasources/remote/leaderboard_remote_data_source.dart'
    as _i27;
import '../../data/repositories/auth_repository_impl.dart' as _i30;
import '../../data/repositories/category_repository_impl.dart' as _i19;
import '../../data/repositories/image_repository_impl.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i29;
import '../../domain/repositories/category_repository.dart' as _i18;
import '../../domain/repositories/image_repository.dart' as _i9;
import '../../domain/repositories/leaderboard_repository.dart' as _i11;
import '../../domain/usecases/auth/check_user_exists_usecase.dart' as _i32;
import '../../domain/usecases/auth/create_user_usecase.dart' as _i33;
import '../../domain/usecases/auth/get_current_user_usecase.dart' as _i34;
import '../../domain/usecases/auth/sign_in_with_facebook_usecase.dart' as _i35;
import '../../domain/usecases/auth/sign_in_with_google_usecase.dart' as _i36;
import '../../domain/usecases/auth/sign_in_with_twitter_usecase.dart' as _i37;
import '../../domain/usecases/auth/update_user_avatar_usecase.dart' as _i38;
import '../../domain/usecases/avatar_usecases/get_avatars_usecase.dart' as _i21;
import '../../domain/usecases/avatar_usecases/update_avatar_usecase.dart'
    as _i15;
import '../../domain/usecases/get_top_categories_usecase.dart' as _i23;
import '../../domain/usecases/leaderboard/get_leaderboard_usecase.dart' as _i22;
import '../../domain/usecases/leaderboard/get_top_users_usecase.dart' as _i24;
import '../../presentation/bloc/Auth_bloc/auth_bloc.dart' as _i39;
import '../../presentation/bloc/avatar_bloc/avatar_bloc.dart' as _i31;
import '../../presentation/bloc/home_bloc/home_bloc.dart' as _i25;
import '../../presentation/bloc/leaderboard_bloc/leaderboard_bloc.dart' as _i26;
import '../../presentation/bloc/multiplayer_bloc/multiplayer_bloc.dart' as _i12;
import '../../presentation/bloc/onboarding_bloc/onboarding_bloc.dart' as _i13;
import '../network/dio_client.dart' as _i20;
import '../session/session_manager.dart' as _i14;
import 'register_module.dart' as _i40;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i4.FacebookAuth>(() => registerModule.facebookAuth);
    gh.lazySingleton<_i5.FirebaseAuth>(() => registerModule.firebaseAuth);
    gh.lazySingleton<_i6.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.lazySingleton<_i7.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i8.ImageRemoteDataSource>(
        () => _i8.ImageRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i9.ImageRepository>(
        () => _i10.ImageRepositoryImpl(gh<_i8.ImageRemoteDataSource>()));
    gh.lazySingleton<_i11.LeaderboardRepository>(
        () => registerModule.leaderboardRepository);
    gh.factory<_i12.MultiplayerBloc>(() => _i12.MultiplayerBloc());
    gh.factory<_i13.OnboardingBloc>(() => _i13.OnboardingBloc());
    gh.lazySingleton<_i14.SessionManager>(
        () => _i14.SessionManager(gh<_i6.FlutterSecureStorage>()));
    gh.factory<_i15.UpdateAvatarUseCase>(
        () => _i15.UpdateAvatarUseCase(gh<_i9.ImageRepository>()));
    gh.lazySingleton<_i16.AuthLocalDataSource>(
        () => _i16.AuthLocalDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i17.CategoryRemoteDataSource>(
        () => _i17.CategoryRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i18.CategoryRepository>(
        () => _i19.CategoryRepositoryImpl(gh<_i17.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i20.DioClient>(() => _i20.DioClient(
          gh<_i3.Dio>(),
          gh<_i16.AuthLocalDataSource>(),
        ));
    gh.factory<_i21.GetAvatarsUseCase>(
        () => _i21.GetAvatarsUseCase(gh<_i9.ImageRepository>()));
    gh.factory<_i22.GetLeaderboardUseCase>(
        () => _i22.GetLeaderboardUseCase(gh<_i11.LeaderboardRepository>()));
    gh.factory<_i23.GetTopCategoriesUseCase>(
        () => _i23.GetTopCategoriesUseCase(gh<_i18.CategoryRepository>()));
    gh.factory<_i24.GetTopUsersUseCase>(
        () => _i24.GetTopUsersUseCase(gh<_i11.LeaderboardRepository>()));
    gh.factory<_i25.HomeBloc>(
        () => _i25.HomeBloc(gh<_i23.GetTopCategoriesUseCase>()));
    gh.factory<_i26.LeaderboardBloc>(() => _i26.LeaderboardBloc(
          gh<_i22.GetLeaderboardUseCase>(),
          gh<_i24.GetTopUsersUseCase>(),
        ));
    gh.lazySingleton<_i27.LeaderboardRemoteDataSource>(
        () => _i27.LeaderboardRemoteDataSourceImpl(gh<_i20.DioClient>()));
    gh.lazySingleton<_i28.AuthRemoteDataSource>(
        () => _i28.AuthRemoteDataSourceImpl(
              gh<_i5.FirebaseAuth>(),
              gh<_i7.GoogleSignIn>(),
              gh<_i4.FacebookAuth>(),
              gh<_i20.DioClient>(),
            ));
    gh.lazySingleton<_i29.AuthRepository>(() => _i30.AuthRepositoryImpl(
          gh<_i28.AuthRemoteDataSource>(),
          gh<_i16.AuthLocalDataSource>(),
          gh<_i14.SessionManager>(),
        ));
    gh.factory<_i31.AvatarBloc>(() => _i31.AvatarBloc(
          gh<_i21.GetAvatarsUseCase>(),
          gh<_i15.UpdateAvatarUseCase>(),
        ));
    gh.factory<_i32.CheckUserExistsUseCase>(
        () => _i32.CheckUserExistsUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i33.CreateUserUseCase>(
        () => _i33.CreateUserUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i34.GetCurrentUserUseCase>(
        () => _i34.GetCurrentUserUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i35.SignInWithFacebookUseCase>(
        () => _i35.SignInWithFacebookUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i36.SignInWithGoogleUseCase>(
        () => _i36.SignInWithGoogleUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i37.SignInWithTwitterUseCase>(
        () => _i37.SignInWithTwitterUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i38.UpdateUserAvatarUseCase>(
        () => _i38.UpdateUserAvatarUseCase(gh<_i29.AuthRepository>()));
    gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(
          gh<_i36.SignInWithGoogleUseCase>(),
          gh<_i35.SignInWithFacebookUseCase>(),
          gh<_i37.SignInWithTwitterUseCase>(),
          gh<_i33.CreateUserUseCase>(),
          gh<_i32.CheckUserExistsUseCase>(),
          gh<_i38.UpdateUserAvatarUseCase>(),
          gh<_i34.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i40.RegisterModule {}
