// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import 'app_router.dart' as _i9;
import 'view/home.dart' as _i1;
import 'view/login/login.dart' as _i2;
import 'view/participants/create_participant.dart' as _i4;
import 'view/participants/participants_form.dart' as _i5;
import 'view/participants/participants_list.dart' as _i6;
import 'view/session/create_session/create_session.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter(
      {_i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomeScreen());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>(
          orElse: () => const LogInRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.LogInScreen(key: args.key, onResult: args.onResult));
    },
    PickExcelRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PickExcelScreen());
    },
    AddParticipantRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AddParticipantRouteArgs>(
          orElse: () => AddParticipantRouteArgs(
              sessionId: queryParams.optString('session_id')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.AddParticipantScreen(
              key: args.key, sessionId: args.sessionId));
    },
    ParticipantsFormRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParticipantsFormRouteArgs>(
          orElse: () =>
              ParticipantsFormRouteArgs(sessionId: pathParams.getString('id')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.ParticipantsFormScreen(
              key: args.key, sessionId: args.sessionId));
    },
    ParticipantsListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParticipantsListRouteArgs>(
          orElse: () =>
              ParticipantsListRouteArgs(sessionId: pathParams.getInt('id')));
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ParticipantsListScreen(
              key: args.key, sessionId: args.sessionId));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(MyHomeRoute.name,
            path: '/dashboard/', guards: [authGuard]),
        _i7.RouteConfig(LogInRoute.name, path: '/login'),
        _i7.RouteConfig(PickExcelRoute.name,
            path: '/dashboard/sessions/create', guards: [authGuard]),
        _i7.RouteConfig(AddParticipantRoute.name,
            path: '/dashboard/participants/create', guards: [authGuard]),
        _i7.RouteConfig(ParticipantsFormRoute.name,
            path: '/dashboard/participants/form/:id'),
        _i7.RouteConfig(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id', guards: [authGuard]),
        _i7.RouteConfig('*#redirect',
            path: '*', redirectTo: '/dashboard/', fullMatch: true),
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: '/dashboard/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.MyHomeScreen]
class MyHomeRoute extends _i7.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/dashboard/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.LogInScreen]
class LogInRoute extends _i7.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i8.Key? key, void Function(bool)? onResult})
      : super(LogInRoute.name,
            path: '/login', args: LogInRouteArgs(key: key, onResult: onResult));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, this.onResult});

  final _i8.Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i3.PickExcelScreen]
class PickExcelRoute extends _i7.PageRouteInfo<void> {
  const PickExcelRoute()
      : super(PickExcelRoute.name, path: '/dashboard/sessions/create');

  static const String name = 'PickExcelRoute';
}

/// generated route for
/// [_i4.AddParticipantScreen]
class AddParticipantRoute extends _i7.PageRouteInfo<AddParticipantRouteArgs> {
  AddParticipantRoute({_i8.Key? key, required String? sessionId})
      : super(AddParticipantRoute.name,
            path: '/dashboard/participants/create',
            args: AddParticipantRouteArgs(key: key, sessionId: sessionId),
            rawQueryParams: {'session_id': sessionId});

  static const String name = 'AddParticipantRoute';
}

class AddParticipantRouteArgs {
  const AddParticipantRouteArgs({this.key, required this.sessionId});

  final _i8.Key? key;

  final String? sessionId;

  @override
  String toString() {
    return 'AddParticipantRouteArgs{key: $key, sessionId: $sessionId}';
  }
}

/// generated route for
/// [_i5.ParticipantsFormScreen]
class ParticipantsFormRoute
    extends _i7.PageRouteInfo<ParticipantsFormRouteArgs> {
  ParticipantsFormRoute({_i8.Key? key, required String sessionId})
      : super(ParticipantsFormRoute.name,
            path: '/dashboard/participants/form/:id',
            args: ParticipantsFormRouteArgs(key: key, sessionId: sessionId),
            rawPathParams: {'id': sessionId});

  static const String name = 'ParticipantsFormRoute';
}

class ParticipantsFormRouteArgs {
  const ParticipantsFormRouteArgs({this.key, required this.sessionId});

  final _i8.Key? key;

  final String sessionId;

  @override
  String toString() {
    return 'ParticipantsFormRouteArgs{key: $key, sessionId: $sessionId}';
  }
}

/// generated route for
/// [_i6.ParticipantsListScreen]
class ParticipantsListRoute
    extends _i7.PageRouteInfo<ParticipantsListRouteArgs> {
  ParticipantsListRoute({_i8.Key? key, required int sessionId})
      : super(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id',
            args: ParticipantsListRouteArgs(key: key, sessionId: sessionId),
            rawPathParams: {'id': sessionId});

  static const String name = 'ParticipantsListRoute';
}

class ParticipantsListRouteArgs {
  const ParticipantsListRouteArgs({this.key, required this.sessionId});

  final _i8.Key? key;

  final int sessionId;

  @override
  String toString() {
    return 'ParticipantsListRouteArgs{key: $key, sessionId: $sessionId}';
  }
}
