// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/base/presentation/pages/profile/profile_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    Login.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
      );
    },
    Profile.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Profile(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Splash(),
      );
    },
    Terms.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Terms(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i9.PageRouteInfo<void> {
  const ActiveAccount({List<_i9.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgetPassword]
class ForgetPassword extends _i9.PageRouteInfo<void> {
  const ForgetPassword({List<_i9.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home({List<_i9.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Login]
class Login extends _i9.PageRouteInfo<void> {
  const Login({List<_i9.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.Profile]
class Profile extends _i9.PageRouteInfo<void> {
  const Profile({List<_i9.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ResetPassword]
class ResetPassword extends _i9.PageRouteInfo<void> {
  const ResetPassword({List<_i9.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Splash]
class Splash extends _i9.PageRouteInfo<void> {
  const Splash({List<_i9.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Terms]
class Terms extends _i9.PageRouteInfo<void> {
  const Terms({List<_i9.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
