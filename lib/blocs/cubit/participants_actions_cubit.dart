import 'package:bloc/bloc.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/utils/enums.dart';

class ParticipantsActionsCubit extends Cubit<BlocsState<void>> {
  final AttendanceApi _attendancesRepo;
  ParticipantsActionsCubit(AttendanceApi attendancesRepo)
      : _attendancesRepo = attendancesRepo,
        super(const BlocsState.initial());

  Future<void> deleteParticipant(
    int participantId,
    int sessionId,
  ) async {
    await apiCallsWrapper(
            _attendancesRepo.deleteParticipant(participantId: participantId))
        .listen((event) => emit(event))
        .asFuture();
  }

  Future<void> recordAttendance(
    int sessionId,
    String participantInfo,
    InfoType type,
  ) async {
    await apiCallsWrapper(_attendancesRepo.recordAttendance(
            sessionId: sessionId, participantInfo: participantInfo, type: type))
        .listen((event) => emit(event))
        .asFuture();
  }

  // Future<void> createParticipant(int sessionId) async {
  //   await apiCallsWrapper(_attendancesRepo.(participantId: participantId))
  //       .listen((event) => emit(event))
  //       .asFuture();
  // }
}
