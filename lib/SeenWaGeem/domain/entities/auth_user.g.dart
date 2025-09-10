// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserImpl _$$AuthUserImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserImpl(
      id: json['id'] as String,
      email: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      avatar: json['avatar'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$AuthUserImplToJson(_$AuthUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'avatar': instance.avatar,
      'photoUrl': instance.photoUrl,
    };
