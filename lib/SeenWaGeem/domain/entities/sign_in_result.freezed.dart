// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInResult {
  AuthUser get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInResultCopyWith<SignInResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResultCopyWith<$Res> {
  factory $SignInResultCopyWith(
          SignInResult value, $Res Function(SignInResult) then) =
      _$SignInResultCopyWithImpl<$Res, SignInResult>;
  @useResult
  $Res call({AuthUser user, String token});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignInResultCopyWithImpl<$Res, $Val extends SignInResult>
    implements $SignInResultCopyWith<$Res> {
  _$SignInResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get user {
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResultImplCopyWith<$Res>
    implements $SignInResultCopyWith<$Res> {
  factory _$$SignInResultImplCopyWith(
          _$SignInResultImpl value, $Res Function(_$SignInResultImpl) then) =
      __$$SignInResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthUser user, String token});

  @override
  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignInResultImplCopyWithImpl<$Res>
    extends _$SignInResultCopyWithImpl<$Res, _$SignInResultImpl>
    implements _$$SignInResultImplCopyWith<$Res> {
  __$$SignInResultImplCopyWithImpl(
      _$SignInResultImpl _value, $Res Function(_$SignInResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$SignInResultImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInResultImpl implements _SignInResult {
  const _$SignInResultImpl({required this.user, required this.token});

  @override
  final AuthUser user;
  @override
  final String token;

  @override
  String toString() {
    return 'SignInResult(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResultImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResultImplCopyWith<_$SignInResultImpl> get copyWith =>
      __$$SignInResultImplCopyWithImpl<_$SignInResultImpl>(this, _$identity);
}

abstract class _SignInResult implements SignInResult {
  const factory _SignInResult(
      {required final AuthUser user,
      required final String token}) = _$SignInResultImpl;

  @override
  AuthUser get user;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SignInResultImplCopyWith<_$SignInResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
