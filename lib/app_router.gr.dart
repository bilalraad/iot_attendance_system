// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'view/home.dart' as _i1;
import 'view/session/create_session/create_session.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MyHomeScreen());
    },
    PickExcelRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PickExcelScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MyHomeRoute.name, path: '/'),
        _i3.RouteConfig(PickExcelRoute.name,
            path: '/dashboard/sessions/create'),
        _i3.RouteConfig('*#redirect',
            path: '*',
            redirectTo: '/dashboard/sessions/participants/form',
            fullMatch: true),
        _i3.RouteConfig('/#redirect',
            path: '/',
            redirectTo: '/dashboard/sessions/participants/form',
            fullMatch: true)
      ];
}

/// generated route for
/// [_i1.MyHomeScreen]
class MyHomeRoute extends _i3.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '/');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.PickExcelScreen]
class PickExcelRoute extends _i3.PageRouteInfo<void> {
  const PickExcelRoute()
      : super(PickExcelRoute.name, path: '/dashboard/sessions/create');

  static const String name = 'PickExcelRoute';
}
