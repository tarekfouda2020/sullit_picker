// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/login_view/login_view.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i12;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash.dart'
    as _i14;
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us.dart'
    as _i4;
import 'package:flutter_tdd/features/general/presentation/pages/privacy_policy/privacy_policy.dart'
    as _i10;
import 'package:flutter_tdd/features/general/presentation/pages/terms_conditions/terms_conditions.dart'
    as _i15;
import 'package:flutter_tdd/features/home/presentation/pages/home/home.dart'
    as _i6;
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details.dart'
    as _i9;
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart'
    as _i19;
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page.dart'
    as _i11;
import 'package:flutter_tdd/features/notifications/presentation/pages/notification_page/notification_page.dart'
    as _i8;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    ActiveAccountPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActiveAccountPageRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActiveAccount(
          key: args.key,
          emailOrPhone: args.emailOrPhone,
        ),
      );
    },
    ChangePasswordPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChangePassword(),
      );
    },
    ConfirmResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmResetPasswordPageRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ConfirmResetPassword(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ContactUsPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContactUsPage(),
      );
    },
    ForgetPasswordPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPasswordPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginView(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NotificationsPage(),
      );
    },
    OrderDetailsRouteName.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteNameArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.OrderDetails(
          key: args.key,
          id: args.id,
          time: args.time,
        ),
      );
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PrivacyPolicy(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    Register.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.Register(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ResetPassword(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.Splash(),
      );
    },
    TermsConditionsPageRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.TermsConditions(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccountPageRoute
    extends _i16.PageRouteInfo<ActiveAccountPageRouteArgs> {
  ActiveAccountPageRoute({
    _i17.Key? key,
    required String emailOrPhone,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ActiveAccountPageRoute.name,
          args: ActiveAccountPageRouteArgs(
            key: key,
            emailOrPhone: emailOrPhone,
          ),
          initialChildren: children,
        );

  static const String name = 'ActiveAccountPageRoute';

  static const _i16.PageInfo<ActiveAccountPageRouteArgs> page =
      _i16.PageInfo<ActiveAccountPageRouteArgs>(name);
}

class ActiveAccountPageRouteArgs {
  const ActiveAccountPageRouteArgs({
    this.key,
    required this.emailOrPhone,
  });

  final _i17.Key? key;

  final String emailOrPhone;

  @override
  String toString() {
    return 'ActiveAccountPageRouteArgs{key: $key, emailOrPhone: $emailOrPhone}';
  }
}

/// generated route for
/// [_i2.ChangePassword]
class ChangePasswordPageRoute extends _i16.PageRouteInfo<void> {
  const ChangePasswordPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ChangePasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ConfirmResetPassword]
class ConfirmResetPasswordPageRoute
    extends _i16.PageRouteInfo<ConfirmResetPasswordPageRouteArgs> {
  ConfirmResetPasswordPageRoute({
    _i18.Key? key,
    required String email,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ConfirmResetPasswordPageRoute.name,
          args: ConfirmResetPasswordPageRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmResetPasswordPageRoute';

  static const _i16.PageInfo<ConfirmResetPasswordPageRouteArgs> page =
      _i16.PageInfo<ConfirmResetPasswordPageRouteArgs>(name);
}

class ConfirmResetPasswordPageRouteArgs {
  const ConfirmResetPasswordPageRouteArgs({
    this.key,
    required this.email,
  });

  final _i18.Key? key;

  final String email;

  @override
  String toString() {
    return 'ConfirmResetPasswordPageRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i4.ContactUsPage]
class ContactUsPageRoute extends _i16.PageRouteInfo<void> {
  const ContactUsPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ContactUsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgetPasswordPage]
class ForgetPasswordPageRoute extends _i16.PageRouteInfo<void> {
  const ForgetPasswordPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ForgetPasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomePageRoute extends _i16.PageRouteInfo<void> {
  const HomePageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginView]
class LoginViewRoute extends _i16.PageRouteInfo<void> {
  const LoginViewRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LoginViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginViewRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NotificationsPage]
class NotificationsPageRoute extends _i16.PageRouteInfo<void> {
  const NotificationsPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          NotificationsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OrderDetails]
class OrderDetailsRouteName
    extends _i16.PageRouteInfo<OrderDetailsRouteNameArgs> {
  OrderDetailsRouteName({
    _i19.Key? key,
    required int id,
    required int time,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRouteName.name,
          args: OrderDetailsRouteNameArgs(
            key: key,
            id: id,
            time: time,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRouteName';

  static const _i16.PageInfo<OrderDetailsRouteNameArgs> page =
      _i16.PageInfo<OrderDetailsRouteNameArgs>(name);
}

class OrderDetailsRouteNameArgs {
  const OrderDetailsRouteNameArgs({
    this.key,
    required this.id,
    required this.time,
  });

  final _i19.Key? key;

  final int id;

  final int time;

  @override
  String toString() {
    return 'OrderDetailsRouteNameArgs{key: $key, id: $id, time: $time}';
  }
}

/// generated route for
/// [_i10.PrivacyPolicy]
class PrivacyPolicyPageRoute extends _i16.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PrivacyPolicyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfilePage]
class ProfilePageRoute extends _i16.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.Register]
class Register extends _i16.PageRouteInfo<void> {
  const Register({List<_i16.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.ResetPassword]
class ResetPassword extends _i16.PageRouteInfo<void> {
  const ResetPassword({List<_i16.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.Splash]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TermsConditions]
class TermsConditionsPageRoute extends _i16.PageRouteInfo<void> {
  const TermsConditionsPageRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TermsConditionsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsConditionsPageRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
