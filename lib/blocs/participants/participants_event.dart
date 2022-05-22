part of 'participants_bloc.dart';

@freezed
class ParticipantsEvent with _$ParticipantsEvent {
  const factory ParticipantsEvent.started() = _Started;
  const factory ParticipantsEvent.loadParticipants(int? sessionId,
      {int? skip, int? limit}) = _LoadParticipants;
  const factory ParticipantsEvent.deleteParticipant(
      int participantId, int sId) = _DeleteParticipant;
  const factory ParticipantsEvent.recordAttendance(int participantId, int sId,
      {InfoType? type}) = _RecordAttendance;
}
