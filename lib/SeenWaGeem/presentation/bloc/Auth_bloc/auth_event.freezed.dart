// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInWithGoogleRequestedImplCopyWith<$Res> {
  factory _$$SignInWithGoogleRequestedImplCopyWith(
          _$SignInWithGoogleRequestedImpl value,
          $Res Function(_$SignInWithGoogleRequestedImpl) then) =
      __$$SignInWithGoogleRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleRequestedImpl>
    implements _$$SignInWithGoogleRequestedImplCopyWith<$Res> {
  __$$SignInWithGoogleRequestedImplCopyWithImpl(
      _$SignInWithGoogleRequestedImpl _value,
      $Res Function(_$SignInWithGoogleRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogleRequestedImpl implements _SignInWithGoogleRequested {
  const _$SignInWithGoogleRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogleRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return signInWithGoogleRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return signInWithGoogleRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithGoogleRequested != null) {
      return signInWithGoogleRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return signInWithGoogleRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return signInWithGoogleRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithGoogleRequested != null) {
      return signInWithGoogleRequested(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGoogleRequested implements AuthEvent {
  const factory _SignInWithGoogleRequested() = _$SignInWithGoogleRequestedImpl;
}

/// @nodoc
abstract class _$$SignInWithFacebookRequestedImplCopyWith<$Res> {
  factory _$$SignInWithFacebookRequestedImplCopyWith(
          _$SignInWithFacebookRequestedImpl value,
          $Res Function(_$SignInWithFacebookRequestedImpl) then) =
      __$$SignInWithFacebookRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithFacebookRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithFacebookRequestedImpl>
    implements _$$SignInWithFacebookRequestedImplCopyWith<$Res> {
  __$$SignInWithFacebookRequestedImplCopyWithImpl(
      _$SignInWithFacebookRequestedImpl _value,
      $Res Function(_$SignInWithFacebookRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithFacebookRequestedImpl
    implements _SignInWithFacebookRequested {
  const _$SignInWithFacebookRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithFacebookRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithFacebookRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return signInWithFacebookRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return signInWithFacebookRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithFacebookRequested != null) {
      return signInWithFacebookRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return signInWithFacebookRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return signInWithFacebookRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithFacebookRequested != null) {
      return signInWithFacebookRequested(this);
    }
    return orElse();
  }
}

abstract class _SignInWithFacebookRequested implements AuthEvent {
  const factory _SignInWithFacebookRequested() =
      _$SignInWithFacebookRequestedImpl;
}

/// @nodoc
abstract class _$$SignInWithTwitterRequestedImplCopyWith<$Res> {
  factory _$$SignInWithTwitterRequestedImplCopyWith(
          _$SignInWithTwitterRequestedImpl value,
          $Res Function(_$SignInWithTwitterRequestedImpl) then) =
      __$$SignInWithTwitterRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithTwitterRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithTwitterRequestedImpl>
    implements _$$SignInWithTwitterRequestedImplCopyWith<$Res> {
  __$$SignInWithTwitterRequestedImplCopyWithImpl(
      _$SignInWithTwitterRequestedImpl _value,
      $Res Function(_$SignInWithTwitterRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithTwitterRequestedImpl implements _SignInWithTwitterRequested {
  const _$SignInWithTwitterRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithTwitterRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithTwitterRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return signInWithTwitterRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return signInWithTwitterRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithTwitterRequested != null) {
      return signInWithTwitterRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return signInWithTwitterRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return signInWithTwitterRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (signInWithTwitterRequested != null) {
      return signInWithTwitterRequested(this);
    }
    return orElse();
  }
}

abstract class _SignInWithTwitterRequested implements AuthEvent {
  const factory _SignInWithTwitterRequested() =
      _$SignInWithTwitterRequestedImpl;
}

/// @nodoc
abstract class _$$CreateUserRequestedImplCopyWith<$Res> {
  factory _$$CreateUserRequestedImplCopyWith(_$CreateUserRequestedImpl value,
          $Res Function(_$CreateUserRequestedImpl) then) =
      __$$CreateUserRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> userData});
}

/// @nodoc
class __$$CreateUserRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateUserRequestedImpl>
    implements _$$CreateUserRequestedImplCopyWith<$Res> {
  __$$CreateUserRequestedImplCopyWithImpl(_$CreateUserRequestedImpl _value,
      $Res Function(_$CreateUserRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$CreateUserRequestedImpl(
      null == userData
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$CreateUserRequestedImpl implements _CreateUserRequested {
  const _$CreateUserRequestedImpl(final Map<String, dynamic> userData)
      : _userData = userData;

  final Map<String, dynamic> _userData;
  @override
  Map<String, dynamic> get userData {
    if (_userData is EqualUnmodifiableMapView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userData);
  }

  @override
  String toString() {
    return 'AuthEvent.createUserRequested(userData: $userData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestedImpl &&
            const DeepCollectionEquality().equals(other._userData, _userData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestedImplCopyWith<_$CreateUserRequestedImpl> get copyWith =>
      __$$CreateUserRequestedImplCopyWithImpl<_$CreateUserRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return createUserRequested(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return createUserRequested?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (createUserRequested != null) {
      return createUserRequested(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return createUserRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return createUserRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (createUserRequested != null) {
      return createUserRequested(this);
    }
    return orElse();
  }
}

abstract class _CreateUserRequested implements AuthEvent {
  const factory _CreateUserRequested(final Map<String, dynamic> userData) =
      _$CreateUserRequestedImpl;

  Map<String, dynamic> get userData;
  @JsonKey(ignore: true)
  _$$CreateUserRequestedImplCopyWith<_$CreateUserRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAvatarRequestedImplCopyWith<$Res> {
  factory _$$UpdateAvatarRequestedImplCopyWith(
          _$UpdateAvatarRequestedImpl value,
          $Res Function(_$UpdateAvatarRequestedImpl) then) =
      __$$UpdateAvatarRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String avatar});
}

/// @nodoc
class __$$UpdateAvatarRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateAvatarRequestedImpl>
    implements _$$UpdateAvatarRequestedImplCopyWith<$Res> {
  __$$UpdateAvatarRequestedImplCopyWithImpl(_$UpdateAvatarRequestedImpl _value,
      $Res Function(_$UpdateAvatarRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = null,
  }) {
    return _then(_$UpdateAvatarRequestedImpl(
      null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAvatarRequestedImpl implements _UpdateAvatarRequested {
  const _$UpdateAvatarRequestedImpl(this.avatar);

  @override
  final String avatar;

  @override
  String toString() {
    return 'AuthEvent.updateAvatarRequested(avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAvatarRequestedImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAvatarRequestedImplCopyWith<_$UpdateAvatarRequestedImpl>
      get copyWith => __$$UpdateAvatarRequestedImplCopyWithImpl<
          _$UpdateAvatarRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return updateAvatarRequested(avatar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return updateAvatarRequested?.call(avatar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (updateAvatarRequested != null) {
      return updateAvatarRequested(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return updateAvatarRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return updateAvatarRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (updateAvatarRequested != null) {
      return updateAvatarRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvatarRequested implements AuthEvent {
  const factory _UpdateAvatarRequested(final String avatar) =
      _$UpdateAvatarRequestedImpl;

  String get avatar;
  @JsonKey(ignore: true)
  _$$UpdateAvatarRequestedImplCopyWith<_$UpdateAvatarRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckUserExistsRequestedImplCopyWith<$Res> {
  factory _$$CheckUserExistsRequestedImplCopyWith(
          _$CheckUserExistsRequestedImpl value,
          $Res Function(_$CheckUserExistsRequestedImpl) then) =
      __$$CheckUserExistsRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$CheckUserExistsRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckUserExistsRequestedImpl>
    implements _$$CheckUserExistsRequestedImplCopyWith<$Res> {
  __$$CheckUserExistsRequestedImplCopyWithImpl(
      _$CheckUserExistsRequestedImpl _value,
      $Res Function(_$CheckUserExistsRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$CheckUserExistsRequestedImpl(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckUserExistsRequestedImpl implements _CheckUserExistsRequested {
  const _$CheckUserExistsRequestedImpl(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.checkUserExistsRequested(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckUserExistsRequestedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckUserExistsRequestedImplCopyWith<_$CheckUserExistsRequestedImpl>
      get copyWith => __$$CheckUserExistsRequestedImplCopyWithImpl<
          _$CheckUserExistsRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return checkUserExistsRequested(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return checkUserExistsRequested?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (checkUserExistsRequested != null) {
      return checkUserExistsRequested(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return checkUserExistsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return checkUserExistsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (checkUserExistsRequested != null) {
      return checkUserExistsRequested(this);
    }
    return orElse();
  }
}

abstract class _CheckUserExistsRequested implements AuthEvent {
  const factory _CheckUserExistsRequested(final String username) =
      _$CheckUserExistsRequestedImpl;

  String get username;
  @JsonKey(ignore: true)
  _$$CheckUserExistsRequestedImplCopyWith<_$CheckUserExistsRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentUserRequestedImplCopyWith<$Res> {
  factory _$$GetCurrentUserRequestedImplCopyWith(
          _$GetCurrentUserRequestedImpl value,
          $Res Function(_$GetCurrentUserRequestedImpl) then) =
      __$$GetCurrentUserRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserRequestedImpl>
    implements _$$GetCurrentUserRequestedImplCopyWith<$Res> {
  __$$GetCurrentUserRequestedImplCopyWithImpl(
      _$GetCurrentUserRequestedImpl _value,
      $Res Function(_$GetCurrentUserRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserRequestedImpl implements _GetCurrentUserRequested {
  const _$GetCurrentUserRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUserRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() signInWithFacebookRequested,
    required TResult Function() signInWithTwitterRequested,
    required TResult Function(Map<String, dynamic> userData)
        createUserRequested,
    required TResult Function(String avatar) updateAvatarRequested,
    required TResult Function(String username) checkUserExistsRequested,
    required TResult Function() getCurrentUserRequested,
  }) {
    return getCurrentUserRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? signInWithFacebookRequested,
    TResult? Function()? signInWithTwitterRequested,
    TResult? Function(Map<String, dynamic> userData)? createUserRequested,
    TResult? Function(String avatar)? updateAvatarRequested,
    TResult? Function(String username)? checkUserExistsRequested,
    TResult? Function()? getCurrentUserRequested,
  }) {
    return getCurrentUserRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? signInWithFacebookRequested,
    TResult Function()? signInWithTwitterRequested,
    TResult Function(Map<String, dynamic> userData)? createUserRequested,
    TResult Function(String avatar)? updateAvatarRequested,
    TResult Function(String username)? checkUserExistsRequested,
    TResult Function()? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (getCurrentUserRequested != null) {
      return getCurrentUserRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(_SignInWithFacebookRequested value)
        signInWithFacebookRequested,
    required TResult Function(_SignInWithTwitterRequested value)
        signInWithTwitterRequested,
    required TResult Function(_CreateUserRequested value) createUserRequested,
    required TResult Function(_UpdateAvatarRequested value)
        updateAvatarRequested,
    required TResult Function(_CheckUserExistsRequested value)
        checkUserExistsRequested,
    required TResult Function(_GetCurrentUserRequested value)
        getCurrentUserRequested,
  }) {
    return getCurrentUserRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult? Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult? Function(_CreateUserRequested value)? createUserRequested,
    TResult? Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult? Function(_CheckUserExistsRequested value)?
        checkUserExistsRequested,
    TResult? Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
  }) {
    return getCurrentUserRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(_SignInWithFacebookRequested value)?
        signInWithFacebookRequested,
    TResult Function(_SignInWithTwitterRequested value)?
        signInWithTwitterRequested,
    TResult Function(_CreateUserRequested value)? createUserRequested,
    TResult Function(_UpdateAvatarRequested value)? updateAvatarRequested,
    TResult Function(_CheckUserExistsRequested value)? checkUserExistsRequested,
    TResult Function(_GetCurrentUserRequested value)? getCurrentUserRequested,
    required TResult orElse(),
  }) {
    if (getCurrentUserRequested != null) {
      return getCurrentUserRequested(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentUserRequested implements AuthEvent {
  const factory _GetCurrentUserRequested() = _$GetCurrentUserRequestedImpl;
}
