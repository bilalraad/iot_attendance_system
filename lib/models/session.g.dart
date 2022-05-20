// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => _$_Session(
      id: json['id'] as int,
      name: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      participantsCount: json['participants_count'] as int? ?? 0,
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'date': instance.date.toIso8601String(),
      'participants_count': instance.participantsCount,
      'participants': instance.participants,
    };
