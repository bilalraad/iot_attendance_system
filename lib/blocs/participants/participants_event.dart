part of 'participants_bloc.dart';

@freezed
class ParticipantsEvent with _$ParticipantsEvent {
  const factory ParticipantsEvent.started() = _Started;
  const factory ParticipantsEvent.loadParticipants(int? sessionId,
      {int? skip, int? limit}) = _LoadParticipants;
}
