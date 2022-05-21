import 'package:dio/dio.dart';
import 'package:iot_attendance_system/blocs/states/result_state.dart';
import 'package:iot_attendance_system/data/api/dio_client.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/data/api/helper/map_utils.dart';
import 'package:iot_attendance_system/data/api/helper/res_with_count.dart';
// import 'package:iot_attendance_system/data/api/helper/token.dart';
import 'package:iot_attendance_system/data/shared_pref_helper.dart';
import 'package:iot_attendance_system/models/app_file.dart';
import 'package:iot_attendance_system/models/create_session.dart';
import 'package:iot_attendance_system/models/session.dart';
import 'package:iot_attendance_system/utils/app_error.dart';

Stream<BlocsState<T>> apiCallsWrapper<T>(Future<T> action) async* {
  yield const BlocsState.loading();
  try {
    final data = await action;
    yield BlocsState.data(data);
  } catch (e, s) {
    yield BlocsState.failure(AppError(raw: e, stack: s));
  }
}

class AttendanceApi {
  final DioClient _dioClient;
  final SharedPreferenceHelper sharedPreference;

  const AttendanceApi(this._dioClient, this.sharedPreference);

  // Future logIn({required String email, required String password}) async {
  //   final response = await _dioClient
  //       .post(Endpoint.logIn, data: {"email": email, "password": password});

  //   await sharedPreference
  //       .saveAuthToken(Token(access: response.data['access_token']));
  //   await sharedPreference.saveUser(User.fromJson(response.data['user']));
  // }

  Future<ResWithCount<Session>> getSessions({
    int? skip,
    int? limit = 25,
    // ProjectsFilter? filter,
  }) async {
    Map<String, dynamic> queryParameters = {
      Endpoint.skip: skip ?? 0,
      Endpoint.limit: limit,
    };
    // if (filter != null) {
    //   queryParameters.addAll(filter.toJson().cleanUpValues());
    // }

    var response = await _dioClient.get(Endpoint.sessions,
        queryParameters: queryParameters);
    return ResWithCount.fromJson(response.data, Session.fromJsonModel);
  }

  // Future participantsUpload(AppFile excelFile) async {
  //   final formData = FormData.fromMap({
  //     "file":
  //         MultipartFile.fromBytes(excelFile.bytes, filename: excelFile.name),
  //   });
  //   await _dioClient.post(Endpoint.importProjects, data: formData);
  // }

  Future<void> addSession({
    required CreateSession newSession,
    required AppFile? excel,
  }) async {
    final formData = FormData.fromMap(newSession.toJson().cleanUpValues());
    if (excel != null) {
      formData.files.add(MapEntry(
          'file', MultipartFile.fromBytes(excel.bytes, filename: excel.name)));
    }

    await _dioClient.post(Endpoint.sessions, data: formData);
  }

  // Future<void> editSession(
  //     {required EditProject project, required String projectId}) async {
  //   await _dioClient.put(Endpoint.project + projectId,
  //       data: project.toJson().cleanUpValues());
  // }

  // Future<Project?> getSession({
  //   required int projectId,
  // }) async {
  //   final response =
  //       await _dioClient.get(Endpoint.project + projectId.toString());
  //   return Project.fromJson(response.data);
  // }

  // Future<Project?> deleteSession({required int projectId}) async {
  //   await _dioClient.delete(Endpoint.project + projectId.toString());
  //   return null;
  // }

}