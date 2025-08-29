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
import 'package:google_sign_in/google_sign_in.dart' as _i11;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/auth_local_data_source.dart' as _i14;
import '../../data/datasources/remote/auth_remote_data_source.dart' as _i15;
import '../../data/datasources/remote/category_remote_data_source.dart' as _i18;
import '../../data/datasources/remote/image_remote_data_source.dart' as _i12;
import '../../data/repositories/auth_repository_impl.dart' as _i17;
import '../../data/repositories/category_repository_impl.dart' as _i19;
import '../../data/repositories/image_repository_impl.dart' as _i13;
import '../../domain/repositories/auth_repository.dart' as _i16;
import '../../domain/repositories/category_repository.dart' as _i10;
import '../../domain/repositories/image_repository.dart' as _i8;
import '../../domain/usecases/auth/sign_in_with_facebook_usecase.dart' as _i21;
import '../../domain/usecases/auth/sign_in_with_google_usecase.dart' as _i22;
import '../../domain/usecases/auth/sign_in_with_twitter_usecase.dart' as _i23;
import '../../domain/usecases/avatar_usecases/get_avatars_usecase.dart' as _i7;
import '../../domain/usecases/get_top_categories_usecase.dart' as _i9;
import '../network/dio_client.dart' as _i20;
import 'register_module.dart' as _i24;

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
    gh.factory<_i7.GetAvatarsUseCase>(
        () => _i7.GetAvatarsUseCase(gh<_i8.ImageRepository>()));
    gh.factory<_i9.GetTopCategoriesUseCase>(
        () => _i9.GetTopCategoriesUseCase(gh<_i10.CategoryRepository>()));
    gh.lazySingleton<_i11.GoogleSignIn>(() => registerModule.googleSignIn);
    gh.lazySingleton<_i12.ImageRemoteDataSource>(
        () => _i12.ImageRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i13.ImageRemoteDataSource>(
        () => _i13.ImageRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i14.AuthLocalDataSource>(
        () => _i14.AuthLocalDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
    gh.lazySingleton<_i15.AuthRemoteDataSource>(
        () => _i15.AuthRemoteDataSourceImpl(
              gh<_i5.FirebaseAuth>(),
              gh<_i11.GoogleSignIn>(),
              gh<_i4.FacebookAuth>(),
              gh<_i3.Dio>(),
              gh<_i14.AuthLocalDataSource>(),
            ));
    gh.lazySingleton<_i16.AuthRepository>(() => _i17.AuthRepositoryImpl(
          gh<_i15.AuthRemoteDataSource>(),
          gh<_i14.AuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i18.CategoryRemoteDataSource>(
        () => _i18.CategoryRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i19.CategoryRemoteDataSource>(
        () => _i19.CategoryRemoteDataSourceImpl(gh<_i3.Dio>()));
    gh.lazySingleton<_i20.DioClient>(() => _i20.DioClient(
          gh<_i3.Dio>(),
          gh<_i14.AuthLocalDataSource>(),
        ));
    gh.factory<_i21.SignInWithFacebookUseCase>(
        () => _i21.SignInWithFacebookUseCase(gh<_i16.AuthRepository>()));
    gh.factory<_i22.SignInWithGoogleUseCase>(
        () => _i22.SignInWithGoogleUseCase(gh<_i16.AuthRepository>()));
    gh.factory<_i23.SignInWithTwitterUseCase>(
        () => _i23.SignInWithTwitterUseCase(gh<_i16.AuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
