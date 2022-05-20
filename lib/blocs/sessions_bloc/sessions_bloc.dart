import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/data/api/helper/res_with_count.dart';
import 'package:iot_attendance_system/models/session.dart';

part 'sessions_event.dart';
part 'sessions_bloc.freezed.dart';

class SessionsBloc
    extends Bloc<SessionsEvent, BlocsState<ResWithCount<Session>>> {
  static SessionsBloc of(BuildContext context, {bool listen = false}) =>
      BlocProvider.of<SessionsBloc>(context, listen: listen);

  SessionsBloc(AttendanceApi projectsRepo) : super(const BlocsState.initial()) {
    on<_Started>((event, emit) async {
      await apiCallsWrapper<ResWithCount<Session>>(projectsRepo.getSessions())
          .listen((event) => emit(event))
          .asFuture();
    });

    on<_LoadSessions>((event, emit) async {
      await apiCallsWrapper<ResWithCount<Session>>(
              projectsRepo.getSessions(skip: event.skip))
          .listen((event) => emit(event))
          .asFuture();
    });
  }
}
