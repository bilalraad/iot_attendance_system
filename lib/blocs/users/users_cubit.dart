import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/data/shared_pref_helper.dart';

class UserCubit extends Cubit<BlocsState> {
  final AttendanceApi _attendanceApi;
  final SharedPreferenceHelper prefHelper;
  static UserCubit of(BuildContext context, {bool listen = false}) =>
      BlocProvider.of<UserCubit>(context, listen: listen);
  UserCubit(AttendanceApi attendanceApi, SharedPreferenceHelper pref)
      : _attendanceApi = attendanceApi,
        prefHelper = pref,
        super(const BlocsState.initial()) {
    attendanceApi.validateToken();
  }

  Future<void> logIn({required String email, required String password}) async {
    await apiCallsWrapper<void>(
            _attendanceApi.logIn(email: email, password: password))
        .listen((event) => emit(event))
        .asFuture();
  }

  Future<void> logOut() async {
    await prefHelper.removeAuthToken();
    // await prefHelper.removeUser();
    emit(const BlocsState.data(null));
  }

  bool get isLoggedIn => prefHelper.authTokens != null;
}
