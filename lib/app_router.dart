import 'package:auto_route/annotations.dart';
import 'package:iot_attendance_system/view/home.dart';

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(page: MyHomeScreen, initial: true),
  RedirectRoute(path: '*', redirectTo: '/projects'),
  RedirectRoute(path: '/', redirectTo: '/projects'),
])
class $AppRouter {}
