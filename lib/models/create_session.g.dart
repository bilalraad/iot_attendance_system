// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSession _$$_CreateSessionFromJson(Map<String, dynamic> json) =>
    _$_CreateSession(
      title: json['title'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_CreateSessionToJson(_$_CreateSession instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date?.toIso8601String(),
    };
