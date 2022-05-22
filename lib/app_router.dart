import 'package:auto_route/annotations.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/view/home.dart';
import 'package:iot_attendance_system/view/participants/participants_list.dart';
import 'package:iot_attendance_system/view/session/create_session/create_session.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(page: MyHomeScreen, initial: true, path: Endpoint.dashboard),
  AutoRoute(page: PickExcelScreen, path: Endpoint.createSession),
  AutoRoute(page: ParticipantsListScreen, path: '${Endpoint.participants}:id'),
  RedirectRoute(path: '*', redirectTo: Endpoint.participantsForm),
  RedirectRoute(path: '/', redirectTo: Endpoint.participantsForm),
])
class $AppRouter {}
