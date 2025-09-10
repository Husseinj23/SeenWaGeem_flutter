import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInWithGoogleRequested() =
      _SignInWithGoogleRequested;
  const factory AuthEvent.signInWithFacebookRequested() =
      _SignInWithFacebookRequested;
  const factory AuthEvent.signInWithTwitterRequested() =
      _SignInWithTwitterRequested;
  const factory AuthEvent.createUserRequested(Map<String, dynamic> userData) =
      _CreateUserRequested;
  const factory AuthEvent.updateAvatarRequested(String avatar) =
      _UpdateAvatarRequested;
  const factory AuthEvent.checkUserExistsRequested(String username) =
      _CheckUserExistsRequested;
  const factory AuthEvent.getCurrentUserRequested() = _GetCurrentUserRequested;
}
