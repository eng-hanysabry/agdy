// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../screens/main_home.dart/home_page.dart' as _i4;
import '../screens/main_home.dart/main_page.dart' as _i3;
import '../screens/main_home.dart/messeges.dart' as _i7;
import '../screens/main_home.dart/notifications.dart' as _i6;
import '../screens/main_home.dart/profile.dart' as _i5;
import '../screens/register_page.dart' as _i2;
import '../screens/sign_options.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SignOptionsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SignOptionsPage());
    },
    RegisterRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RegisterPage());
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MainPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfilePage());
    },
    NotificationsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.NotificationsPage());
    },
    MessegesRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.MessegesPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SignOptionsRoute.name, path: '/'),
        _i8.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i8.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i8.RouteConfig(HomeRoute.name, path: '', parent: MainRoute.name),
          _i8.RouteConfig(ProfileRoute.name,
              path: 'profile-page', parent: MainRoute.name),
          _i8.RouteConfig(NotificationsRoute.name,
              path: 'notifications-page', parent: MainRoute.name),
          _i8.RouteConfig(MessegesRoute.name,
              path: 'messeges-page', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SignOptionsPage]
class SignOptionsRoute extends _i8.PageRouteInfo<void> {
  const SignOptionsRoute() : super(SignOptionsRoute.name, path: '/');

  static const String name = 'SignOptionsRoute';
}

/// generated route for
/// [_i2.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i6.NotificationsPage]
class NotificationsRoute extends _i8.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: 'notifications-page');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i7.MessegesPage]
class MessegesRoute extends _i8.PageRouteInfo<void> {
  const MessegesRoute() : super(MessegesRoute.name, path: 'messeges-page');

  static const String name = 'MessegesRoute';
}
