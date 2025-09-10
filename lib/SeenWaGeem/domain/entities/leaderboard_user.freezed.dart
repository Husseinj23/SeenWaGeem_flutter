// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderboardUser _$LeaderboardUserFromJson(Map<String, dynamic> json) {
  return _LeaderboardUser.fromJson(json);
}

/// @nodoc
mixin _$LeaderboardUser {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardUserCopyWith<LeaderboardUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardUserCopyWith<$Res> {
  factory $LeaderboardUserCopyWith(
          LeaderboardUser value, $Res Function(LeaderboardUser) then) =
      _$LeaderboardUserCopyWithImpl<$Res, LeaderboardUser>;
  @useResult
  $Res call(
      {String id,
      String username,
      String firstName,
      String lastName,
      String avatar,
      int totalScore,
      int rank,
      bool isOnline});
}

/// @nodoc
class _$LeaderboardUserCopyWithImpl<$Res, $Val extends LeaderboardUser>
    implements $LeaderboardUserCopyWith<$Res> {
  _$LeaderboardUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
    Object? totalScore = null,
    Object? rank = null,
    Object? isOnline = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardUserImplCopyWith<$Res>
    implements $LeaderboardUserCopyWith<$Res> {
  factory _$$LeaderboardUserImplCopyWith(_$LeaderboardUserImpl value,
          $Res Function(_$LeaderboardUserImpl) then) =
      __$$LeaderboardUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String firstName,
      String lastName,
      String avatar,
      int totalScore,
      int rank,
      bool isOnline});
}

/// @nodoc
class __$$LeaderboardUserImplCopyWithImpl<$Res>
    extends _$LeaderboardUserCopyWithImpl<$Res, _$LeaderboardUserImpl>
    implements _$$LeaderboardUserImplCopyWith<$Res> {
  __$$LeaderboardUserImplCopyWithImpl(
      _$LeaderboardUserImpl _value, $Res Function(_$LeaderboardUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatar = null,
    Object? totalScore = null,
    Object? rank = null,
    Object? isOnline = null,
  }) {
    return _then(_$LeaderboardUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardUserImpl implements _LeaderboardUser {
  const _$LeaderboardUserImpl(
      {required this.id,
      required this.username,
      required this.firstName,
      required this.lastName,
      required this.avatar,
      required this.totalScore,
      required this.rank,
      this.isOnline = false});

  factory _$LeaderboardUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardUserImplFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String avatar;
  @override
  final int totalScore;
  @override
  final int rank;
  @override
  @JsonKey()
  final bool isOnline;

  @override
  String toString() {
    return 'LeaderboardUser(id: $id, username: $username, firstName: $firstName, lastName: $lastName, avatar: $avatar, totalScore: $totalScore, rank: $rank, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, firstName,
      lastName, avatar, totalScore, rank, isOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardUserImplCopyWith<_$LeaderboardUserImpl> get copyWith =>
      __$$LeaderboardUserImplCopyWithImpl<_$LeaderboardUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardUserImplToJson(
      this,
    );
  }
}

abstract class _LeaderboardUser implements LeaderboardUser {
  const factory _LeaderboardUser(
      {required final String id,
      required final String username,
      required final String firstName,
      required final String lastName,
      required final String avatar,
      required final int totalScore,
      required final int rank,
      final bool isOnline}) = _$LeaderboardUserImpl;

  factory _LeaderboardUser.fromJson(Map<String, dynamic> json) =
      _$LeaderboardUserImpl.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get avatar;
  @override
  int get totalScore;
  @override
  int get rank;
  @override
  bool get isOnline;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardUserImplCopyWith<_$LeaderboardUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
