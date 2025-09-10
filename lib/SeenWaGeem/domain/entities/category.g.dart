// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      questionCount: json['questionCount'] as String?,
      color: json['color'] as String?,
      incentivePhrase: json['incentivePhrase'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'questionCount': instance.questionCount,
      'color': instance.color,
      'incentivePhrase': instance.incentivePhrase,
    };
