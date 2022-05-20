// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Participant _$$_ParticipantFromJson(Map<String, dynamic> json) =>
    _$_Participant(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      governorate: json['governorate'] as String,
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      nationality: json['nationality'] as String?,
      fieldOfStudy: json['field_of_study'] as String?,
      educationalBackground: json['educational_background'] as String?,
      university: json['university'] as String?,
      attendance: json['attendance'] as bool,
      sessionId: json['session_id'] as int,
    );

Map<String, dynamic> _$$_ParticipantToJson(_$_Participant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender],
      'governorate': instance.governorate,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'nationality': instance.nationality,
      'field_of_study': instance.fieldOfStudy,
      'educational_background': instance.educationalBackground,
      'university': instance.university,
      'attendance': instance.attendance,
      'session_id': instance.sessionId,
    };

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
};
