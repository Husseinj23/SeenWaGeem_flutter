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

import '../../data/datasources/local/auth_local_data_source.dart' as _i13;
import '../../data/datasources/remote/auth_remote_data_source.dart' as _i21;
import '../../data/datasources/remote/category_remote_data_source.dart' as _i14;
import '../../data/datasources/remote/image_remote_data_source.dart' as _i8;
import '../../data/repositories/auth_repository_impl.dart' as _i23;
import '../../data/repositories/category_repository_impl.dart' as _i16;
import '../../data/repositories/image_repository_impl.dart' as _i10;
import '../../domain/repositories/auth_repository.dart' as _i22;
import '../../domain/repositories/category_repository.dart' as _i15;
import '../../domain/repositories/image_repository.dart' as _i9;
import '../../domain/usecases/auth/sign_in_with_facebook_usecase.dart' as _i25;
import '../../domain/usecases/auth/sign_in_with_google_usecase.dart' as _i26;
import '../../domain/usecases/auth/sign_in_with_twitter_usecase.dart' as _i27;
import '../../domain/usecases/avatar_usecases/get_avatars_usecase.dart' as _i18;
import '../../domain/usecases/avatar_usecases/update_avatar_usecase.dart'
    as _i12;
import '../../domain/usecases/get_top_categories_usecase.dart' as _i19;
import '../../presentation/bloc/Auth_bloc/auth_bloc.dart' as _i28;
import '../../presentation/bloc/avatar_bloc/avatar_bloc.dart' as _i24;
import '../../presentation/bloc/home_bloc/home_bloc.dart' as _i20;
import '../../presentation/bloc/onboarding_bloc/onboarding_bloc.dart' as _i11;
import '../network/dio_client.dart' as _i17;
import 'register_module.dart' as _i29;

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
    gh.factory<_i11.OnboardingBloc>(() => _i11.OnboardingBloc());
    gh.factory<_i12.UpdateAvatarUseCase>(
        () => _i12.UpdateAvatarUseCase(gh<_i9.ImageRepository>()));
    gh.lazySingleton<_i13.AuthLocalDataSource>(
        () => _i13.AuthLocalDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i14.CategoryRemoteDataSource>(
        () => _i14.CategoryRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i15.CategoryRepository>(
        () => _i16.CategoryRepositoryImpl(gh<_i14.CategoryRemoteDataSource>()));
    gh.lazySingleton<_i17.DioClient>(() => _i17.DioClient(
          gh<_i3.Dio>(),
          gh<_i13.AuthLocalDataSource>(),
        ));
    gh.factory<_i18.GetAvatarsUseCase>(
        () => _i18.GetAvatarsUseCase(gh<_i9.ImageRepository>()));
    gh.factory<_i19.GetTopCategoriesUseCase>(
        () => _i19.GetTopCategoriesUseCase(gh<_i15.CategoryRepository>()));
    gh.factory<_i20.HomeBloc>(
        () => _i20.HomeBloc(gh<_i19.GetTopCategoriesUseCase>()));
    gh.lazySingleton<_i21.AuthRemoteDataSource>(
        () => _i21.AuthRemoteDataSourceImpl(
              gh<_i5.FirebaseAuth>(),
              gh<_i7.GoogleSignIn>(),
              gh<_i4.FacebookAuth>(),
              gh<_i17.DioClient>(),
            ));
    gh.lazySingleton<_i22.AuthRepository>(() => _i23.AuthRepositoryImpl(
          gh<_i21.AuthRemoteDataSource>(),
          gh<_i13.AuthLocalDataSource>(),
        ));
    gh.factory<_i24.AvatarBloc>(() => _i24.AvatarBloc(
          gh<_i18.GetAvatarsUseCase>(),
          gh<_i12.UpdateAvatarUseCase>(),
        ));
    gh.factory<_i25.SignInWithFacebookUseCase>(
        () => _i25.SignInWithFacebookUseCase(gh<_i22.AuthRepository>()));
    gh.factory<_i26.SignInWithGoogleUseCase>(
        () => _i26.SignInWithGoogleUseCase(gh<_i22.AuthRepository>()));
    gh.factory<_i27.SignInWithTwitterUseCase>(
        () => _i27.SignInWithTwitterUseCase(gh<_i22.AuthRepository>()));
    gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(
          gh<_i26.SignInWithGoogleUseCase>(),
          gh<_i25.SignInWithFacebookUseCase>(),
          gh<_i27.SignInWithTwitterUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i29.RegisterModule {}
