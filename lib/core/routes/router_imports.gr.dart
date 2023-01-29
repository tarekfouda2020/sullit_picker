// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i10;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/base/presentation/pages/profile/profile_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/general/presentation/pages/location_address/LocationAddressImports.dart'
    as _i8;
import 'package:flutter_tdd/features/general/presentation/pages/repeated_questions/repeated_questions_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i6;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Splash(),
        opaque: true,
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
        opaque: true,
      );
    },
    ActiveAccountRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.ActiveAccount(),
        opaque: true,
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.ResetPassword(),
        opaque: true,
      );
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
        opaque: true,
      );
    },
    TermsRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.Terms(),
        opaque: true,
      );
    },
    RepeatedQuestionsRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.RepeatedQuestions(),
        opaque: true,
      );
    },
    LocationAddressRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i8.LocationAddress(),
        opaque: true,
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.Home(),
      );
    },
    HomePages.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.EmptyRouterPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.Profile(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i12.RouteConfig(
          LoginRoute.name,
          path: '/Login',
        ),
        _i12.RouteConfig(
          ActiveAccountRoute.name,
          path: '/active-account',
        ),
        _i12.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i12.RouteConfig(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        ),
        _i12.RouteConfig(
          TermsRoute.name,
          path: '/Terms',
        ),
        _i12.RouteConfig(
          RepeatedQuestionsRoute.name,
          path: '/repeated-questions',
        ),
        _i12.RouteConfig(
          LocationAddressRoute.name,
          path: '/location-address',
        ),
        _i12.RouteConfig(
          HomeRoute.name,
          path: '/Home',
          children: [
            _i12.RouteConfig(
              HomePages.name,
              path: 'home',
              parent: HomeRoute.name,
              children: [
                _i12.RouteConfig(
                  ProfileRoute.name,
                  path: 'Profile',
                  parent: HomePages.name,
                )
              ],
            )
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/Login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ActiveAccount]
class ActiveAccountRoute extends _i12.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(
          ActiveAccountRoute.name,
          path: '/active-account',
        );

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i4.ResetPassword]
class ResetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(
          ForgetPasswordRoute.name,
          path: '/forget-password',
        );

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i6.Terms]
class TermsRoute extends _i12.PageRouteInfo<void> {
  const TermsRoute()
      : super(
          TermsRoute.name,
          path: '/Terms',
        );

  static const String name = 'TermsRoute';
}

/// generated route for
/// [_i7.RepeatedQuestions]
class RepeatedQuestionsRoute extends _i12.PageRouteInfo<void> {
  const RepeatedQuestionsRoute()
      : super(
          RepeatedQuestionsRoute.name,
          path: '/repeated-questions',
        );

  static const String name = 'RepeatedQuestionsRoute';
}

/// generated route for
/// [_i8.LocationAddress]
class LocationAddressRoute extends _i12.PageRouteInfo<void> {
  const LocationAddressRoute()
      : super(
          LocationAddressRoute.name,
          path: '/location-address',
        );

  static const String name = 'LocationAddressRoute';
}

/// generated route for
/// [_i9.Home]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/Home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i10.EmptyRouterPage]
class HomePages extends _i12.PageRouteInfo<void> {
  const HomePages({List<_i12.PageRouteInfo>? children})
      : super(
          HomePages.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomePages';
}

/// generated route for
/// [_i11.Profile]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'Profile',
        );

  static const String name = 'ProfileRoute';
}
