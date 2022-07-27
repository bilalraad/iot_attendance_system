// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@freezed
class Participant with _$Participant {
  factory Participant({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'gender') required Gender gender,
    @JsonKey(name: 'governorate') required String governorate,
    @JsonKey(name: 'date_of_birth') required DateTime dateOfBirth,
    @JsonKey(name: 'nationality') required String? nationality,
    @JsonKey(name: 'field_of_study') required String? fieldOfStudy,
    @JsonKey(name: 'educational_background')
        required String? educationalBackground,
    @JsonKey(name: 'university') required String? university,
    @JsonKey(name: 'attendance', fromJson: boolFromJson)
        required bool attendance,
    // @JsonKey(name: 'session_id') required int sessionId,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);

  static Participant fromJsonModel(dynamic json) => Participant.fromJson(json);
}

enum Gender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female
}

// support for either 1 and 0 or true and false
bool boolFromJson(dynamic data) {
  if (data is int) {
    if (data == 1) return true;
    return false;
  }
  if (data is bool) return data;
  return false;
}
