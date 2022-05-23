import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/models/session.dart';

part 'participants_event.dart';
part 'participants_bloc.freezed.dart';

class ParticipantsBloc extends Bloc<ParticipantsEvent, BlocsState<Session>> {
  static ParticipantsBloc of(BuildContext context, {bool listen = false}) =>
      BlocProvider.of<ParticipantsBloc>(context, listen: listen);
  ParticipantsBloc(AttendanceApi attendanceRepo)
      : super(const BlocsState.initial()) {
    on<_LoadParticipants>((event, emit) async {
      await apiCallsWrapper<Session>(
              attendanceRepo.getParticipants(sessionId: event.sessionId))
          .listen((event) => emit(event))
          .asFuture();
    });
  }

  void reload(int sessionId) {
    add(_LoadParticipants(sessionId));
  }
}
