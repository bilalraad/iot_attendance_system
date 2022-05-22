import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/data/api/helper/res_with_count.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/models/session.dart';

part 'sessions_event.dart';
part 'sessions_bloc.freezed.dart';

class SessionsBloc
    extends Bloc<SessionsEvent, BlocsState<ResWithCount<Session>>> {
  static SessionsBloc of(BuildContext context, {bool listen = false}) =>
      BlocProvider.of<SessionsBloc>(context, listen: listen);

  SessionsBloc(AttendanceApi attendanceRepo)
      : super(const BlocsState.initial()) {
    on<_Started>((event, emit) async {
      await apiCallsWrapper<ResWithCount<Session>>(attendanceRepo.getSessions())
          .listen((event) => emit(event))
          .asFuture();
    });

    on<_LoadSessions>((event, emit) async {
      await apiCallsWrapper<ResWithCount<Session>>(
              attendanceRepo.getSessions(skip: event.skip))
          .listen((event) => emit(event))
          .asFuture();
    });
    on<_DeleteSession>((event, emit) async {
      await apiCallsWrapper(
              attendanceRepo.deleteSession(sessionId: event.sessionId))
          .listen((event) => event.maybeWhen(
                data: (_) => add(const _Started()),
                failure: (e) => emit(BlocsState.failure(e)),
                orElse: () => emit(const BlocsState.loading()),
              ))
          .asFuture();
    });
    on<_UploadParticipants>((event, emit) async {
      await apiCallsWrapper(attendanceRepo.participantsUpload(
              event.sessionId, event.excelFile))
          .listen((event) => event.maybeWhen(
                failure: (e) => emit(BlocsState.failure(e)),
                data: (_) => add(const _Started()),
                orElse: () => emit(const BlocsState.loading()),
              ))
          .asFuture();
    });
  }
}
