part of 'sessions_bloc.dart';

@freezed
class SessionsEvent with _$SessionsEvent {
  const factory SessionsEvent.started() = _Started;
  const factory SessionsEvent.loadSessions(int? skip) = _LoadSessions;
}
