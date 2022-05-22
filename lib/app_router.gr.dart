// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import 'view/home.dart' as _i1;
import 'view/participants/participants_list.dart' as _i3;
import 'view/session/create_session/create_session.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomeScreen());
    },
    PickExcelRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PickExcelScreen());
    },
    ParticipantsListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParticipantsListRouteArgs>(
          orElse: () =>
              ParticipantsListRouteArgs(sessionId: pathParams.getInt('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ParticipantsListScreen(
              key: args.key, sessionId: args.sessionId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MyHomeRoute.name, path: '/dashboard/'),
        _i4.RouteConfig(PickExcelRoute.name,
            path: '/dashboard/sessions/create'),
        _i4.RouteConfig(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id'),
        _i4.RouteConfig('*#redirect',
            path: '*',
            redirectTo: '/dashboard/sessions/participants/form',
            fullMatch: true),
        _i4.RouteConfig('/#redirect',
            path: '/',
            redirectTo: '/dashboard/sessions/participants/form',
            fullMatch: true)
      ];
}

/// generated route for
/// [_i1.MyHomeScreen]
class MyHomeRoute extends _i4.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/dashboard/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.PickExcelScreen]
class PickExcelRoute extends _i4.PageRouteInfo<void> {
  const PickExcelRoute()
      : super(PickExcelRoute.name, path: '/dashboard/sessions/create');

  static const String name = 'PickExcelRoute';
}

/// generated route for
/// [_i3.ParticipantsListScreen]
class ParticipantsListRoute
    extends _i4.PageRouteInfo<ParticipantsListRouteArgs> {
  ParticipantsListRoute({_i5.Key? key, required int sessionId})
      : super(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id',
            args: ParticipantsListRouteArgs(key: key, sessionId: sessionId),
            rawPathParams: {'id': sessionId});

  static const String name = 'ParticipantsListRoute';
}

class ParticipantsListRouteArgs {
  const ParticipantsListRouteArgs({this.key, required this.sessionId});

  final _i5.Key? key;

  final int sessionId;

  @override
  String toString() {
    return 'ParticipantsListRouteArgs{key: $key, sessionId: $sessionId}';
  }
}
