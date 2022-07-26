import 'package:auto_route/auto_route.dart';
import 'package:iot_attendance_system/data/api/helper/endpoints.dart';
import 'package:iot_attendance_system/data/shared_pref_helper.dart';
import 'package:iot_attendance_system/view/home.dart';
import 'package:iot_attendance_system/view/login/login.dart';
import 'package:iot_attendance_system/view/participants/create_participant.dart';
import 'package:iot_attendance_system/view/participants/participants_form.dart';
import 'package:iot_attendance_system/view/participants/participants_list.dart';
import 'package:iot_attendance_system/view/session/create_session/create_session.dart';

import 'app_router.gr.dart';

// ignore: constant_identifier_names
const FRONT_URL = "https://attendance.iotmaker.org/web/index.html#";

@MaterialAutoRouter(replaceInRouteName: 'Screen,Route', routes: <AutoRoute>[
  AutoRoute(
      page: MyHomeScreen,
      initial: true,
      path: Endpoint.dashboard,
      guards: [AuthGuard]),
  AutoRoute(page: LogInScreen, initial: true, path: Endpoint.logIn),
  AutoRoute(
      page: PickExcelScreen, path: Endpoint.createSession, guards: [AuthGuard]),
  AutoRoute(
      page: AddParticipantScreen,
      path: '${Endpoint.participants}create',
      guards: [AuthGuard]),
  AutoRoute(
      page: ParticipantsFormScreen, path: '${Endpoint.participantsForm}:id'),
  AutoRoute(
      page: ParticipantsListScreen,
      path: '${Endpoint.participants}:id',
      guards: [AuthGuard]),
  RedirectRoute(path: '*', redirectTo: Endpoint.dashboard),
  RedirectRoute(path: '/', redirectTo: Endpoint.dashboard),
])
class $AppRouter {}

class AuthGuard extends AutoRouteGuard {
  final SharedPreferenceHelper prefHelper;

  AuthGuard(this.prefHelper);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // the navigation is paused until resolver.next() is called with either
    // true to resume/continue navigation or false to abort navigation

    if (prefHelper.authTokens != null) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      router.push(LogInRoute(onResult: (success) {
        resolver.next(success);
      }));
    }
  }
}
