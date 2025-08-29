import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/auth_user.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(AuthUser user) = _Success;
  const factory AuthState.failure(String message) = _Failure;
}
