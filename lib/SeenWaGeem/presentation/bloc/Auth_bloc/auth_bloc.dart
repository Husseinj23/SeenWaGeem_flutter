import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/auth_user.dart';
import '../../../domain/usecases/auth/sign_in_with_facebook_usecase.dart';
import '../../../domain/usecases/auth/sign_in_with_google_usecase.dart';
import '../../../domain/usecases/auth/sign_in_with_twitter_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithGoogleUseCase _signInWithGoogle;
  final SignInWithFacebookUseCase _signInWithFacebook;
  final SignInWithTwitterUseCase _signInWithTwitter;

  AuthBloc(
    this._signInWithGoogle,
    this._signInWithFacebook,
    this._signInWithTwitter,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        signInWithGoogleRequested: (e) =>
            _handleSignIn(_signInWithGoogle.call, emit),
        signInWithFacebookRequested: (e) =>
            _handleSignIn(_signInWithFacebook.call, emit),
        signInWithTwitterRequested: (e) =>
            _handleSignIn(_signInWithTwitter.call, emit),
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
}
