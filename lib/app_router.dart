import 'package:auto_route/annotations.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/view/home.dart';
import 'package:iot_attendance_system/view/participants/create_participant.dart';
import 'package:iot_attendance_system/view/participants/participants_form.dart';
import 'package:iot_attendance_system/view/participants/participants_list.dart';
import 'package:iot_attendance_system/view/session/create_session/create_session.dart';

// ignore: constant_identifier_names
const FRONT_URL = "http://localhost:5000/#";

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(page: MyHomeScreen, initial: true, path: Endpoint.dashboard),
  AutoRoute(page: PickExcelScreen, path: Endpoint.createSession),
  AutoRoute(page: AddParticipantScreen, path: '${Endpoint.participants}create'),
  AutoRoute(
      page: ParticipantsFormScreen, path: '${Endpoint.participantsForm}:id'),
  AutoRoute(page: ParticipantsListScreen, path: '${Endpoint.participants}:id'),
  RedirectRoute(path: '*', redirectTo: Endpoint.dashboard),
  RedirectRoute(path: '/', redirectTo: Endpoint.dashboard),
])
class $AppRouter {}
