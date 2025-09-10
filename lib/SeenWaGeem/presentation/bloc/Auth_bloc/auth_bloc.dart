import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/auth_user.dart';
import '../../../domain/usecases/auth/sign_in_with_facebook_usecase.dart';
import '../../../domain/usecases/auth/sign_in_with_google_usecase.dart';
import '../../../domain/usecases/auth/sign_in_with_twitter_usecase.dart';
import '../../../domain/usecases/auth/create_user_usecase.dart';
import '../../../domain/usecases/auth/check_user_exists_usecase.dart';
import '../../../domain/usecases/auth/update_user_avatar_usecase.dart';
import '../../../domain/usecases/auth/get_current_user_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithGoogleUseCase _signInWithGoogle;
  final SignInWithFacebookUseCase _signInWithFacebook;
  final SignInWithTwitterUseCase _signInWithTwitter;
  final CreateUserUseCase _createUser;
  final CheckUserExistsUseCase _checkUserExists;
  final UpdateUserAvatarUseCase _updateUserAvatar;
  final GetCurrentUserUseCase _getCurrentUser;

  AuthBloc(
    this._signInWithGoogle,
    this._signInWithFacebook,
    this._signInWithTwitter,
    this._createUser,
    this._checkUserExists,
    this._updateUserAvatar,
    this._getCurrentUser,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signInWithGoogleRequested: (e) =>
            _handleSignIn(_signInWithGoogle.call, emit),
        signInWithFacebookRequested: (e) =>
            _handleSignIn(_signInWithFacebook.call, emit),
        signInWithTwitterRequested: (e) =>
            _handleSignIn(_signInWithTwitter.call, emit),
        createUserRequested: (e) => _handleCreateUser(e.userData, emit),
        updateAvatarRequested: (e) => _handleUpdateAvatar(e.avatar, emit),
        checkUserExistsRequested: (e) => _handleCheckUserExists(e.username, emit),
        getCurrentUserRequested: (e) => _handleGetCurrentUser(emit),
      );
    });
  }

  Future<void> _handleSignIn(
    Future<AuthUser> Function() signInMethod,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final user = await signInMethod();
      emit(AuthState.success(user));
    } catch (e) {
      emit(AuthState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> _handleCreateUser(
    Map<String, dynamic> userData,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final user = await _createUser.call(userData);
      emit(AuthState.userCreated(user));
    } catch (e) {
      emit(AuthState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> _handleUpdateAvatar(
    String avatar,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    try {
      final user = await _updateUserAvatar.call(avatar);
      emit(AuthState.avatarUpdated(user));
    } catch (e) {
      emit(AuthState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> _handleCheckUserExists(
    String username,
    Emitter<AuthState> emit,
  ) async {
    try {
      final exists = await _checkUserExists.call(username);
      emit(AuthState.userExists(exists));
    } catch (e) {
      emit(AuthState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }

  Future<void> _handleGetCurrentUser(
    Emitter<AuthState> emit,
  ) async {
    try {
      final user = await _getCurrentUser.call();
      if (user != null) {
        emit(AuthState.success(user));
      } else {
        emit(const AuthState.initial());
      }
    } catch (e) {
      emit(AuthState.failure(e.toString().replaceFirst('Exception: ', '')));
    }
  }
}
