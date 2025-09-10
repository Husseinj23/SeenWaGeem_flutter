// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLeaderboard,
    required TResult Function(int limit) fetchTopUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLeaderboard,
    TResult? Function(int limit)? fetchTopUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLeaderboard,
    TResult Function(int limit)? fetchTopUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLeaderboard value) fetchLeaderboard,
    required TResult Function(_FetchTopUsers value) fetchTopUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult? Function(_FetchTopUsers value)? fetchTopUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult Function(_FetchTopUsers value)? fetchTopUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardEventCopyWith<$Res> {
  factory $LeaderboardEventCopyWith(
          LeaderboardEvent value, $Res Function(LeaderboardEvent) then) =
      _$LeaderboardEventCopyWithImpl<$Res, LeaderboardEvent>;
}

/// @nodoc
class _$LeaderboardEventCopyWithImpl<$Res, $Val extends LeaderboardEvent>
    implements $LeaderboardEventCopyWith<$Res> {
  _$LeaderboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchLeaderboardImplCopyWith<$Res> {
  factory _$$FetchLeaderboardImplCopyWith(_$FetchLeaderboardImpl value,
          $Res Function(_$FetchLeaderboardImpl) then) =
      __$$FetchLeaderboardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchLeaderboardImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$FetchLeaderboardImpl>
    implements _$$FetchLeaderboardImplCopyWith<$Res> {
  __$$FetchLeaderboardImplCopyWithImpl(_$FetchLeaderboardImpl _value,
      $Res Function(_$FetchLeaderboardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchLeaderboardImpl implements _FetchLeaderboard {
  const _$FetchLeaderboardImpl();

  @override
  String toString() {
    return 'LeaderboardEvent.fetchLeaderboard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchLeaderboardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLeaderboard,
    required TResult Function(int limit) fetchTopUsers,
  }) {
    return fetchLeaderboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLeaderboard,
    TResult? Function(int limit)? fetchTopUsers,
  }) {
    return fetchLeaderboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLeaderboard,
    TResult Function(int limit)? fetchTopUsers,
    required TResult orElse(),
  }) {
    if (fetchLeaderboard != null) {
      return fetchLeaderboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLeaderboard value) fetchLeaderboard,
    required TResult Function(_FetchTopUsers value) fetchTopUsers,
  }) {
    return fetchLeaderboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult? Function(_FetchTopUsers value)? fetchTopUsers,
  }) {
    return fetchLeaderboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult Function(_FetchTopUsers value)? fetchTopUsers,
    required TResult orElse(),
  }) {
    if (fetchLeaderboard != null) {
      return fetchLeaderboard(this);
    }
    return orElse();
  }
}

abstract class _FetchLeaderboard implements LeaderboardEvent {
  const factory _FetchLeaderboard() = _$FetchLeaderboardImpl;
}

/// @nodoc
abstract class _$$FetchTopUsersImplCopyWith<$Res> {
  factory _$$FetchTopUsersImplCopyWith(
          _$FetchTopUsersImpl value, $Res Function(_$FetchTopUsersImpl) then) =
      __$$FetchTopUsersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$FetchTopUsersImplCopyWithImpl<$Res>
    extends _$LeaderboardEventCopyWithImpl<$Res, _$FetchTopUsersImpl>
    implements _$$FetchTopUsersImplCopyWith<$Res> {
  __$$FetchTopUsersImplCopyWithImpl(
      _$FetchTopUsersImpl _value, $Res Function(_$FetchTopUsersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$FetchTopUsersImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchTopUsersImpl implements _FetchTopUsers {
  const _$FetchTopUsersImpl({this.limit = 10});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'LeaderboardEvent.fetchTopUsers(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTopUsersImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTopUsersImplCopyWith<_$FetchTopUsersImpl> get copyWith =>
      __$$FetchTopUsersImplCopyWithImpl<_$FetchTopUsersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchLeaderboard,
    required TResult Function(int limit) fetchTopUsers,
  }) {
    return fetchTopUsers(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchLeaderboard,
    TResult? Function(int limit)? fetchTopUsers,
  }) {
    return fetchTopUsers?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchLeaderboard,
    TResult Function(int limit)? fetchTopUsers,
    required TResult orElse(),
  }) {
    if (fetchTopUsers != null) {
      return fetchTopUsers(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchLeaderboard value) fetchLeaderboard,
    required TResult Function(_FetchTopUsers value) fetchTopUsers,
  }) {
    return fetchTopUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult? Function(_FetchTopUsers value)? fetchTopUsers,
  }) {
    return fetchTopUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchLeaderboard value)? fetchLeaderboard,
    TResult Function(_FetchTopUsers value)? fetchTopUsers,
    required TResult orElse(),
  }) {
    if (fetchTopUsers != null) {
      return fetchTopUsers(this);
    }
    return orElse();
  }
}

abstract class _FetchTopUsers implements LeaderboardEvent {
  const factory _FetchTopUsers({final int limit}) = _$FetchTopUsersImpl;

  int get limit;
  @JsonKey(ignore: true)
  _$$FetchTopUsersImplCopyWith<_$FetchTopUsersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
