// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardUserImpl _$$LeaderboardUserImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardUserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      avatar: json['avatar'] as String,
      totalScore: (json['totalScore'] as num).toInt(),
      rank: (json['rank'] as num).toInt(),
      isOnline: json['isOnline'] as bool? ?? false,
    );

Map<String, dynamic> _$$LeaderboardUserImplToJson(
        _$LeaderboardUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'totalScore': instance.totalScore,
      'rank': instance.rank,
      'isOnline': instance.isOnline,
    };
