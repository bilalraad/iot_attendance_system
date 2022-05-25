// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/models/participant.dart';

part 'create_participant.freezed.dart';
part 'create_participant.g.dart';

@freezed
class CreateParticipant with _$CreateParticipant {
  factory CreateParticipant({
    @JsonKey(name: 'session_id') required String? sessionId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'date_of_birth') required DateTime? dateOfBirth,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'gender') required Gender? gender,
    @JsonKey(name: 'nationality') required String nationality,
    @JsonKey(name: 'governorate') required String governorate,
    @JsonKey(name: 'university') required String? university,
    @JsonKey(name: 'educational_background')
        required String? educationalBackground,
    @JsonKey(name: 'field_of_study') required String? fieldOfStudy,
    @JsonKey(name: 'phone') required String phone,
  }) = _CreateParticipant;

  factory CreateParticipant.fromJson(Map<String, dynamic> json) =>
      _$CreateParticipantFromJson(json);

  factory CreateParticipant.empty() => CreateParticipant(
        name: '',
        dateOfBirth: null,
        educationalBackground: null,
        email: '',
        gender: Gender.male,
        fieldOfStudy: null,
        governorate: '',
        nationality: '',
        phone: '',
        sessionId: null,
        university: null,
      );

  static CreateParticipant fromJsonModel(dynamic json) =>
      CreateParticipant.fromJson(json);
}
