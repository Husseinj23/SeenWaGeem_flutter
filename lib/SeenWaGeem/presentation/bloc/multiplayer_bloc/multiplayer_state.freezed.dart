// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiplayer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiplayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiplayerStateCopyWith<$Res> {
  factory $MultiplayerStateCopyWith(
          MultiplayerState value, $Res Function(MultiplayerState) then) =
      _$MultiplayerStateCopyWithImpl<$Res, MultiplayerState>;
}

/// @nodoc
class _$MultiplayerStateCopyWithImpl<$Res, $Val extends MultiplayerState>
    implements $MultiplayerStateCopyWith<$Res> {
  _$MultiplayerStateCopyWithImpl(this._value, this._then);

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
    extends _$MultiplayerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MultiplayerState.initial()';
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
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
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
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MultiplayerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SearchingImplCopyWith<$Res> {
  factory _$$SearchingImplCopyWith(
          _$SearchingImpl value, $Res Function(_$SearchingImpl) then) =
      __$$SearchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchingImplCopyWithImpl<$Res>
    extends _$MultiplayerStateCopyWithImpl<$Res, _$SearchingImpl>
    implements _$$SearchingImplCopyWith<$Res> {
  __$$SearchingImplCopyWithImpl(
      _$SearchingImpl _value, $Res Function(_$SearchingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchingImpl implements _Searching {
  const _$SearchingImpl();

  @override
  String toString() {
    return 'MultiplayerState.searching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) {
    return searching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) {
    return searching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements MultiplayerState {
  const factory _Searching() = _$SearchingImpl;
}

/// @nodoc
abstract class _$$GameFoundImplCopyWith<$Res> {
  factory _$$GameFoundImplCopyWith(
          _$GameFoundImpl value, $Res Function(_$GameFoundImpl) then) =
      __$$GameFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameFoundImplCopyWithImpl<$Res>
    extends _$MultiplayerStateCopyWithImpl<$Res, _$GameFoundImpl>
    implements _$$GameFoundImplCopyWith<$Res> {
  __$$GameFoundImplCopyWithImpl(
      _$GameFoundImpl _value, $Res Function(_$GameFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameFoundImpl implements _GameFound {
  const _$GameFoundImpl();

  @override
  String toString() {
    return 'MultiplayerState.gameFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) {
    return gameFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) {
    return gameFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (gameFound != null) {
      return gameFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) {
    return gameFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) {
    return gameFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (gameFound != null) {
      return gameFound(this);
    }
    return orElse();
  }
}

abstract class _GameFound implements MultiplayerState {
  const factory _GameFound() = _$GameFoundImpl;
}

/// @nodoc
abstract class _$$GameCancelledImplCopyWith<$Res> {
  factory _$$GameCancelledImplCopyWith(
          _$GameCancelledImpl value, $Res Function(_$GameCancelledImpl) then) =
      __$$GameCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameCancelledImplCopyWithImpl<$Res>
    extends _$MultiplayerStateCopyWithImpl<$Res, _$GameCancelledImpl>
    implements _$$GameCancelledImplCopyWith<$Res> {
  __$$GameCancelledImplCopyWithImpl(
      _$GameCancelledImpl _value, $Res Function(_$GameCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameCancelledImpl implements _GameCancelled {
  const _$GameCancelledImpl();

  @override
  String toString() {
    return 'MultiplayerState.gameCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) {
    return gameCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) {
    return gameCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (gameCancelled != null) {
      return gameCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) {
    return gameCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) {
    return gameCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (gameCancelled != null) {
      return gameCancelled(this);
    }
    return orElse();
  }
}

abstract class _GameCancelled implements MultiplayerState {
  const factory _GameCancelled() = _$GameCancelledImpl;
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
    extends _$MultiplayerStateCopyWithImpl<$Res, _$FailureImpl>
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
    return 'MultiplayerState.failure(message: $message)';
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
    required TResult Function() searching,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searching,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searching,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    TResult Function(String message)? failure,
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
    required TResult Function(_Searching value) searching,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Searching value)? searching,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Searching value)? searching,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements MultiplayerState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
