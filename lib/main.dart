import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:iot_attendance_system/app_router.dart';
import 'package:iot_attendance_system/app_router.gr.dart';
import 'package:iot_attendance_system/blocs/create_session/create_session_cubit.dart';

import 'package:iot_attendance_system/blocs/participants/participants_bloc.dart';
import 'package:iot_attendance_system/blocs/participants_actions/participants_actions_cubit.dart';
import 'package:iot_attendance_system/blocs/sessions_bloc/sessions_bloc.dart';
import 'package:iot_attendance_system/blocs/users/users_cubit.dart';
import 'package:iot_attendance_system/data/api/dio_client.dart';
import 'package:iot_attendance_system/data/api/helper/network.dart';
import 'package:iot_attendance_system/data/api/attendance_api.dart';
import 'package:iot_attendance_system/data/shared_pref_helper.dart';
import 'package:iot_attendance_system/utils/app_utils.dart';
import 'package:iot_attendance_system/utils/globals.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();

  final app = await configureInjections(const MyApp());
  runZonedGuarded(
    () => runApp(app),
    (error, stack) => log(error.toString()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appRouter =
        AppRouter(authGuard: AuthGuard(UserCubit.of(context).prefHelper));
    return MaterialApp.router(
      title: 'Attendance',
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationParser: appRouter.defaultRouteParser(),
      theme: ThemeData(
        primarySwatch: buildMaterialColor(const Color(0xFF3482F6)),
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en')],
    );
  }
}

Future<Widget> configureInjections(Widget child) async {
  Env.setBaseUrl();

  var sharedPreference = await SharedPreferences.getInstance();
  var sharedPrefHelper = SharedPreferenceHelper(sharedPreference);
  var dio = Network.provideDio(sharedPrefHelper);
  var dioClient = DioClient(dio);
  var attendanceRepo = AttendanceApi(dioClient, sharedPrefHelper);
  return MultiBlocProvider(
    providers: [
      // BlocProvider(create: (_) => filter),
      BlocProvider(
          lazy: false, create: (context) => SessionsBloc(attendanceRepo)),
      BlocProvider(create: (_) => CreateSessionCubit(attendanceRepo)),
      BlocProvider(create: (context) => ParticipantsBloc(attendanceRepo)),
      BlocProvider(create: (_) => ParticipantsActionsCubit(attendanceRepo)),
      BlocProvider(create: (_) => UserCubit(attendanceRepo, sharedPrefHelper)),
    ],
    child: child,
  );
}
