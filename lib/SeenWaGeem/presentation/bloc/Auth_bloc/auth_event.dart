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
}
