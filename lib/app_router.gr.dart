// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'view/home.dart' as _i1;
import 'view/participants/participants_form.dart' as _i3;
import 'view/participants/participants_list.dart' as _i4;
import 'view/session/create_session/create_session.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomeScreen());
    },
    PickExcelRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PickExcelScreen());
    },
    ParticipantsFormRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParticipantsFormRouteArgs>(
          orElse: () =>
              ParticipantsFormRouteArgs(sessionId: pathParams.getString('id')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.ParticipantsFormScreen(
              key: args.key, sessionId: args.sessionId));
    },
    ParticipantsListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ParticipantsListRouteArgs>(
          orElse: () =>
              ParticipantsListRouteArgs(sessionId: pathParams.getInt('id')));
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ParticipantsListScreen(
              key: args.key, sessionId: args.sessionId));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MyHomeRoute.name, path: '/dashboard/'),
        _i5.RouteConfig(PickExcelRoute.name,
            path: '/dashboard/sessions/create'),
        _i5.RouteConfig(ParticipantsFormRoute.name,
            path: '/dashboard/participants/form/:id'),
        _i5.RouteConfig(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id'),
        _i5.RouteConfig('*#redirect',
            path: '*', redirectTo: '/dashboard/', fullMatch: true),
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/dashboard/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.MyHomeScreen]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/dashboard/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.PickExcelScreen]
class PickExcelRoute extends _i5.PageRouteInfo<void> {
  const PickExcelRoute()
      : super(PickExcelRoute.name, path: '/dashboard/sessions/create');

  static const String name = 'PickExcelRoute';
}

/// generated route for
/// [_i3.ParticipantsFormScreen]
class ParticipantsFormRoute
    extends _i5.PageRouteInfo<ParticipantsFormRouteArgs> {
  ParticipantsFormRoute({_i6.Key? key, required String sessionId})
      : super(ParticipantsFormRoute.name,
            path: '/dashboard/participants/form/:id',
            args: ParticipantsFormRouteArgs(key: key, sessionId: sessionId),
            rawPathParams: {'id': sessionId});

  static const String name = 'ParticipantsFormRoute';
}

class ParticipantsFormRouteArgs {
  const ParticipantsFormRouteArgs({this.key, required this.sessionId});

  final _i6.Key? key;

  final String sessionId;

  @override
  String toString() {
    return 'ParticipantsFormRouteArgs{key: $key, sessionId: $sessionId}';
  }
}

/// generated route for
/// [_i4.ParticipantsListScreen]
class ParticipantsListRoute
    extends _i5.PageRouteInfo<ParticipantsListRouteArgs> {
  ParticipantsListRoute({_i6.Key? key, required int sessionId})
      : super(ParticipantsListRoute.name,
            path: '/dashboard/participants/:id',
            args: ParticipantsListRouteArgs(key: key, sessionId: sessionId),
            rawPathParams: {'id': sessionId});

  static const String name = 'ParticipantsListRoute';
}

class ParticipantsListRouteArgs {
  const ParticipantsListRouteArgs({this.key, required this.sessionId});

  final _i6.Key? key;

  final int sessionId;

  @override
  String toString() {
    return 'ParticipantsListRouteArgs{key: $key, sessionId: $sessionId}';
  }
}
