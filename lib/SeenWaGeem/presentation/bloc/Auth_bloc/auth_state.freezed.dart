// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthUser user});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get user {
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.user);

  @override
  final AuthUser user;

  @override
  String toString() {
    return 'AuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success(final AuthUser user) = _$SuccessImpl;

  AuthUser get user;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserExistsImplCopyWith<$Res> {
  factory _$$UserExistsImplCopyWith(
          _$UserExistsImpl value, $Res Function(_$UserExistsImpl) then) =
      __$$UserExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class __$$UserExistsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserExistsImpl>
    implements _$$UserExistsImplCopyWith<$Res> {
  __$$UserExistsImplCopyWithImpl(
      _$UserExistsImpl _value, $Res Function(_$UserExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_$UserExistsImpl(
      null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserExistsImpl implements _UserExists {
  const _$UserExistsImpl(this.exists);

  @override
  final bool exists;

  @override
  String toString() {
    return 'AuthState.userExists(exists: $exists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExistsImpl &&
            (identical(other.exists, exists) || other.exists == exists));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistsImplCopyWith<_$UserExistsImpl> get copyWith =>
      __$$UserExistsImplCopyWithImpl<_$UserExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return userExists(exists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return userExists?.call(exists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(exists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return userExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return userExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(this);
    }
    return orElse();
  }
}

abstract class _UserExists implements AuthState {
  const factory _UserExists(final bool exists) = _$UserExistsImpl;

  bool get exists;
  @JsonKey(ignore: true)
  _$$UserExistsImplCopyWith<_$UserExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCreatedImplCopyWith<$Res> {
  factory _$$UserCreatedImplCopyWith(
          _$UserCreatedImpl value, $Res Function(_$UserCreatedImpl) then) =
      __$$UserCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthUser user});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserCreatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserCreatedImpl>
    implements _$$UserCreatedImplCopyWith<$Res> {
  __$$UserCreatedImplCopyWithImpl(
      _$UserCreatedImpl _value, $Res Function(_$UserCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserCreatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get user {
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserCreatedImpl implements _UserCreated {
  const _$UserCreatedImpl(this.user);

  @override
  final AuthUser user;

  @override
  String toString() {
    return 'AuthState.userCreated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      __$$UserCreatedImplCopyWithImpl<_$UserCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return userCreated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return userCreated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return userCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return userCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (userCreated != null) {
      return userCreated(this);
    }
    return orElse();
  }
}

abstract class _UserCreated implements AuthState {
  const factory _UserCreated(final AuthUser user) = _$UserCreatedImpl;

  AuthUser get user;
  @JsonKey(ignore: true)
  _$$UserCreatedImplCopyWith<_$UserCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AvatarUpdatedImplCopyWith<$Res> {
  factory _$$AvatarUpdatedImplCopyWith(
          _$AvatarUpdatedImpl value, $Res Function(_$AvatarUpdatedImpl) then) =
      __$$AvatarUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthUser user});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AvatarUpdatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AvatarUpdatedImpl>
    implements _$$AvatarUpdatedImplCopyWith<$Res> {
  __$$AvatarUpdatedImplCopyWithImpl(
      _$AvatarUpdatedImpl _value, $Res Function(_$AvatarUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AvatarUpdatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserCopyWith<$Res> get user {
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AvatarUpdatedImpl implements _AvatarUpdated {
  const _$AvatarUpdatedImpl(this.user);

  @override
  final AuthUser user;

  @override
  String toString() {
    return 'AuthState.avatarUpdated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarUpdatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarUpdatedImplCopyWith<_$AvatarUpdatedImpl> get copyWith =>
      __$$AvatarUpdatedImplCopyWithImpl<_$AvatarUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthUser user) success,
    required TResult Function(String message) failure,
    required TResult Function(bool exists) userExists,
    required TResult Function(AuthUser user) userCreated,
    required TResult Function(AuthUser user) avatarUpdated,
  }) {
    return avatarUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthUser user)? success,
    TResult? Function(String message)? failure,
    TResult? Function(bool exists)? userExists,
    TResult? Function(AuthUser user)? userCreated,
    TResult? Function(AuthUser user)? avatarUpdated,
  }) {
    return avatarUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthUser user)? success,
    TResult Function(String message)? failure,
    TResult Function(bool exists)? userExists,
    TResult Function(AuthUser user)? userCreated,
    TResult Function(AuthUser user)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (avatarUpdated != null) {
      return avatarUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_UserCreated value) userCreated,
    required TResult Function(_AvatarUpdated value) avatarUpdated,
  }) {
    return avatarUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_UserCreated value)? userCreated,
    TResult? Function(_AvatarUpdated value)? avatarUpdated,
  }) {
    return avatarUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_UserCreated value)? userCreated,
    TResult Function(_AvatarUpdated value)? avatarUpdated,
    required TResult orElse(),
  }) {
    if (avatarUpdated != null) {
      return avatarUpdated(this);
    }
    return orElse();
  }
}

abstract class _AvatarUpdated implements AuthState {
  const factory _AvatarUpdated(final AuthUser user) = _$AvatarUpdatedImpl;

  AuthUser get user;
  @JsonKey(ignore: true)
  _$$AvatarUpdatedImplCopyWith<_$AvatarUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
