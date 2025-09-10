// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiplayer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MultiplayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearch,
    required TResult Function() stopSearch,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startSearch,
    TResult? Function()? stopSearch,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearch,
    TResult Function()? stopSearch,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_StopSearch value) stopSearch,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_StopSearch value)? stopSearch,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_StopSearch value)? stopSearch,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiplayerEventCopyWith<$Res> {
  factory $MultiplayerEventCopyWith(
          MultiplayerEvent value, $Res Function(MultiplayerEvent) then) =
      _$MultiplayerEventCopyWithImpl<$Res, MultiplayerEvent>;
}

/// @nodoc
class _$MultiplayerEventCopyWithImpl<$Res, $Val extends MultiplayerEvent>
    implements $MultiplayerEventCopyWith<$Res> {
  _$MultiplayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartSearchImplCopyWith<$Res> {
  factory _$$StartSearchImplCopyWith(
          _$StartSearchImpl value, $Res Function(_$StartSearchImpl) then) =
      __$$StartSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartSearchImplCopyWithImpl<$Res>
    extends _$MultiplayerEventCopyWithImpl<$Res, _$StartSearchImpl>
    implements _$$StartSearchImplCopyWith<$Res> {
  __$$StartSearchImplCopyWithImpl(
      _$StartSearchImpl _value, $Res Function(_$StartSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartSearchImpl implements _StartSearch {
  const _$StartSearchImpl();

  @override
  String toString() {
    return 'MultiplayerEvent.startSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearch,
    required TResult Function() stopSearch,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
  }) {
    return startSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startSearch,
    TResult? Function()? stopSearch,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
  }) {
    return startSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearch,
    TResult Function()? stopSearch,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_StopSearch value) stopSearch,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
  }) {
    return startSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_StopSearch value)? stopSearch,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
  }) {
    return startSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_StopSearch value)? stopSearch,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    required TResult orElse(),
  }) {
    if (startSearch != null) {
      return startSearch(this);
    }
    return orElse();
  }
}

abstract class _StartSearch implements MultiplayerEvent {
  const factory _StartSearch() = _$StartSearchImpl;
}

/// @nodoc
abstract class _$$StopSearchImplCopyWith<$Res> {
  factory _$$StopSearchImplCopyWith(
          _$StopSearchImpl value, $Res Function(_$StopSearchImpl) then) =
      __$$StopSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopSearchImplCopyWithImpl<$Res>
    extends _$MultiplayerEventCopyWithImpl<$Res, _$StopSearchImpl>
    implements _$$StopSearchImplCopyWith<$Res> {
  __$$StopSearchImplCopyWithImpl(
      _$StopSearchImpl _value, $Res Function(_$StopSearchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopSearchImpl implements _StopSearch {
  const _$StopSearchImpl();

  @override
  String toString() {
    return 'MultiplayerEvent.stopSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startSearch,
    required TResult Function() stopSearch,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
  }) {
    return stopSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startSearch,
    TResult? Function()? stopSearch,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
  }) {
    return stopSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearch,
    TResult Function()? stopSearch,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
    required TResult orElse(),
  }) {
    if (stopSearch != null) {
      return stopSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_StopSearch value) stopSearch,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
  }) {
    return stopSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_StopSearch value)? stopSearch,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
  }) {
    return stopSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_StopSearch value)? stopSearch,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    required TResult orElse(),
  }) {
    if (stopSearch != null) {
      return stopSearch(this);
    }
    return orElse();
  }
}

abstract class _StopSearch implements MultiplayerEvent {
  const factory _StopSearch() = _$StopSearchImpl;
}

/// @nodoc
abstract class _$$GameFoundImplCopyWith<$Res> {
  factory _$$GameFoundImplCopyWith(
          _$GameFoundImpl value, $Res Function(_$GameFoundImpl) then) =
      __$$GameFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameFoundImplCopyWithImpl<$Res>
    extends _$MultiplayerEventCopyWithImpl<$Res, _$GameFoundImpl>
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
    return 'MultiplayerEvent.gameFound()';
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
    required TResult Function() startSearch,
    required TResult Function() stopSearch,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
  }) {
    return gameFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startSearch,
    TResult? Function()? stopSearch,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
  }) {
    return gameFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearch,
    TResult Function()? stopSearch,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
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
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_StopSearch value) stopSearch,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
  }) {
    return gameFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_StopSearch value)? stopSearch,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
  }) {
    return gameFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_StopSearch value)? stopSearch,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    required TResult orElse(),
  }) {
    if (gameFound != null) {
      return gameFound(this);
    }
    return orElse();
  }
}

abstract class _GameFound implements MultiplayerEvent {
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
    extends _$MultiplayerEventCopyWithImpl<$Res, _$GameCancelledImpl>
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
    return 'MultiplayerEvent.gameCancelled()';
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
    required TResult Function() startSearch,
    required TResult Function() stopSearch,
    required TResult Function() gameFound,
    required TResult Function() gameCancelled,
  }) {
    return gameCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startSearch,
    TResult? Function()? stopSearch,
    TResult? Function()? gameFound,
    TResult? Function()? gameCancelled,
  }) {
    return gameCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startSearch,
    TResult Function()? stopSearch,
    TResult Function()? gameFound,
    TResult Function()? gameCancelled,
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
    required TResult Function(_StartSearch value) startSearch,
    required TResult Function(_StopSearch value) stopSearch,
    required TResult Function(_GameFound value) gameFound,
    required TResult Function(_GameCancelled value) gameCancelled,
  }) {
    return gameCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartSearch value)? startSearch,
    TResult? Function(_StopSearch value)? stopSearch,
    TResult? Function(_GameFound value)? gameFound,
    TResult? Function(_GameCancelled value)? gameCancelled,
  }) {
    return gameCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartSearch value)? startSearch,
    TResult Function(_StopSearch value)? stopSearch,
    TResult Function(_GameFound value)? gameFound,
    TResult Function(_GameCancelled value)? gameCancelled,
    required TResult orElse(),
  }) {
    if (gameCancelled != null) {
      return gameCancelled(this);
    }
    return orElse();
  }
}

abstract class _GameCancelled implements MultiplayerEvent {
  const factory _GameCancelled() = _$GameCancelledImpl;
}
