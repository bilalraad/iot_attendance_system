import 'package:bloc/bloc.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/models/create_session.dart';

class CreateSessionCubit extends Cubit<BlocsState<void>> {
  final AttendanceApi _attendancesRepo;
  CreateSessionCubit(AttendanceApi attendancesRepo)
      : _attendancesRepo = attendancesRepo,
        super(const BlocsState.initial());

  Future<void> submitSession(CreateSession session, AppFile? excel) async {
    await apiCallsWrapper(
            _attendancesRepo.addSession(newSession: session, excel: excel))
        .listen((event) => emit(event))
        .asFuture();
  }
}
