import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/models/participant.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  factory Session({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String name,
    @JsonKey(name: 'date') required DateTime date,
    @JsonKey(name: 'participants_count', defaultValue: 0)
        required int participantsCount,
    @JsonKey(name: 'participants', defaultValue: [])
        required List<Participant> participants,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  static Session fromJsonModel(dynamic json) => Session.fromJson(json);
}
