import 'package:auto_route/annotations.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/view/home.dart';
import 'package:iot_attendance_system/view/session/create_session/create_session.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(page: MyHomeScreen, initial: true),
  AutoRoute(page: PickExcelScreen, path: Endpoint.createSession),
  RedirectRoute(path: '*', redirectTo: Endpoint.participantsForm),
  RedirectRoute(path: '/', redirectTo: Endpoint.participantsForm),
])
class $AppRouter {}
