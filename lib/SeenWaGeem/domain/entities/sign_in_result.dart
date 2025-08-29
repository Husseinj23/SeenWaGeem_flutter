import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_user.dart';

part 'sign_in_result.freezed.dart';

@freezed
class SignInResult with _$SignInResult {
  const factory SignInResult({required AuthUser user, required String token}) =
      _SignInResult;
}
