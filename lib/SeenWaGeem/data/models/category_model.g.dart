// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      questionCount: json['questionCount'] as String?,
      color: json['color'] as String?,
      incentivePhrase: json['incentivePhrase'] as String?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'questionCount': instance.questionCount,
      'color': instance.color,
      'incentivePhrase': instance.incentivePhrase,
    };
