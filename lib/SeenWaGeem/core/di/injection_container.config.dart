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

import '../../data/datasources/local/auth_local_data_source.dart' as _i15;
import '../../data/datasources/remote/auth_remote_data_source.dart' as _i27;
import '../../data/datasources/remote/category_remote_data_source.dart' as _i16;
import '../../data/datasources/remote/image_remote_data_source.dart' as _i8;
import '../../data/datasources/remote/leaderboard_remote_data_source.dart'
    as _i26;
import '../../data/repositories/auth_repository_impl.dart' as _i29;
import '../../data/repositories/category_repository_impl.dart' as _i18;
import '../../data/repositories/image_repository_impl.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i28;
import '../../domain/repositories/category_repository.dart' as _i17;
import '../../domain/repositories/image_repository.dart' as _i9;
import '../../domain/repositories/leaderboard_repository.dart' as _i11;
import '../../domain/usecases/auth/check_user_exists_usecase.dart' as _i31;
import '../../domain/usecases/auth/create_user_usecase.dart' as _i32;
import '../../domain/usecases/auth/get_current_user_usecase.dart' as _i33;
import '../../domain/usecases/auth/sign_in_with_facebook_usecase.dart' as _i34;
import '../../domain/usecases/auth/sign_in_with_google_usecase.dart' as _i35;
import '../../domain/usecases/auth/sign_in_with_twitter_usecase.dart' as _i36;
import '../../domain/usecases/auth/update_user_avatar_usecase.dart' as _i37;
import '../../domain/usecases/avatar_usecases/get_avatars_usecase.dart' as _i20;
import '../../domain/usecases/avatar_usecases/update_avatar_usecase.dart'
    as _i14;
import '../../domain/usecases/get_top_categories_usecase.dart' as _i22;
import '../../domain/usecases/leaderboard/get_leaderboard_usecase.dart' as _i21;
import '../../domain/usecases/leaderboard/get_top_users_usecase.dart' as _i23;
import '../../presentation/bloc/Auth_bloc/auth_bloc.dart' as _i38;
import '../../presentation/bloc/avatar_bloc/avatar_bloc.dart' as _i30;
import '../../presentation/bloc/home_bloc/home_bloc.dart' as _i24;
import '../../presentation/bloc/leaderboard_bloc/leaderboard_bloc.dart' as _i25;
import '../../presentation/bloc/multiplayer_bloc/multiplayer_bloc.dart' as _i12;
import '../../presentation/bloc/onboarding_bloc/onboarding_bloc.dart' as _i13;
import '../network/dio_client.dart' as _i19;
import 'register_module.dart' as _i39;

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
    gh.factory<_i14.UpdateAvatarUseCase>(
        () => _i14.UpdateAvatarUseCase(gh<_i9.ImageRepository>()));
    gh.lazySingleton<_i15.AuthLocalDataSource>(
        () => _i15.AuthLocalDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i16.CategoryRemoteDataSource>(
        () => _i16.CategoryRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i17.CategoryRepository>(
        () => _i18.CategoryRepositoryImpl(gh<_i16.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i19.DioClient>(() => _i19.DioClient(
          gh<_i3.Dio>(),
          gh<_i15.AuthLocalDataSource>(),
        ));
    gh.factory<_i20.GetAvatarsUseCase>(
        () => _i20.GetAvatarsUseCase(gh<_i9.ImageRepository>()));
    gh.factory<_i21.GetLeaderboardUseCase>(
        () => _i21.GetLeaderboardUseCase(gh<_i11.LeaderboardRepository>()));
    gh.factory<_i22.GetTopCategoriesUseCase>(
        () => _i22.GetTopCategoriesUseCase(gh<_i17.CategoryRepository>()));
    gh.factory<_i23.GetTopUsersUseCase>(
        () => _i23.GetTopUsersUseCase(gh<_i11.LeaderboardRepository>()));
    gh.factory<_i24.HomeBloc>(
        () => _i24.HomeBloc(gh<_i22.GetTopCategoriesUseCase>()));
    gh.factory<_i25.LeaderboardBloc>(() => _i25.LeaderboardBloc(
          gh<_i21.GetLeaderboardUseCase>(),
          gh<_i23.GetTopUsersUseCase>(),
        ));
    gh.lazySingleton<_i26.LeaderboardRemoteDataSource>(
        () => _i26.LeaderboardRemoteDataSourceImpl(gh<_i19.DioClient>()));
    gh.lazySingleton<_i27.AuthRemoteDataSource>(
        () => _i27.AuthRemoteDataSourceImpl(
              gh<_i5.FirebaseAuth>(),
              gh<_i7.GoogleSignIn>(),
              gh<_i4.FacebookAuth>(),
              gh<_i19.DioClient>(),
            ));
    gh.lazySingleton<_i28.AuthRepository>(() => _i29.AuthRepositoryImpl(
          gh<_i27.AuthRemoteDataSource>(),
          gh<_i15.AuthLocalDataSource>(),
        ));
    gh.factory<_i30.AvatarBloc>(() => _i30.AvatarBloc(
          gh<_i20.GetAvatarsUseCase>(),
          gh<_i14.UpdateAvatarUseCase>(),
        ));
    gh.factory<_i31.CheckUserExistsUseCase>(
        () => _i31.CheckUserExistsUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i32.CreateUserUseCase>(
        () => _i32.CreateUserUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i33.GetCurrentUserUseCase>(
        () => _i33.GetCurrentUserUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i34.SignInWithFacebookUseCase>(
        () => _i34.SignInWithFacebookUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i35.SignInWithGoogleUseCase>(
        () => _i35.SignInWithGoogleUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i36.SignInWithTwitterUseCase>(
        () => _i36.SignInWithTwitterUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i37.UpdateUserAvatarUseCase>(
        () => _i37.UpdateUserAvatarUseCase(gh<_i28.AuthRepository>()));
    gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(
          gh<_i35.SignInWithGoogleUseCase>(),
          gh<_i34.SignInWithFacebookUseCase>(),
          gh<_i36.SignInWithTwitterUseCase>(),
          gh<_i32.CreateUserUseCase>(),
          gh<_i31.CheckUserExistsUseCase>(),
          gh<_i37.UpdateUserAvatarUseCase>(),
          gh<_i33.GetCurrentUserUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i39.RegisterModule {}
