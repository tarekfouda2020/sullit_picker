// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash.dart'
    as _i15;
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area.dart'
    as _i18;
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_imports.dart'
    as _i22;
import 'package:flutter_tdd/features/home/presentation/pages/home/home.dart'
    as _i5;
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page.dart'
    as _i12;
import 'package:flutter_tdd/features/notifications/presentation/pages/notification_page/notifications.dart'
    as _i9;
import 'package:flutter_tdd/features/orders/presentation/pages/orders_history/orders_history.dart'
    as _i10;
import 'package:flutter_tdd/features/profile/presentation/pages/contact_us/contact_us.dart'
    as _i3;
import 'package:flutter_tdd/features/profile/presentation/pages/privacy_policy/privacy_policy.dart'
    as _i11;
import 'package:flutter_tdd/features/profile/presentation/pages/statistics/statistics.dart'
    as _i16;
import 'package:flutter_tdd/features/profile/presentation/pages/terms_conditions/terms_conditions.dart'
    as _i19;
import 'package:flutter_tdd/features/subscriptions/presentation/pages/my_subscription/my_subscription.dart'
    as _i8;
import 'package:flutter_tdd/features/subscriptions/presentation/pages/subscription/subscription.dart'
    as _i17;
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/wallet.dart'
    as _i20;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    ChangePasswordPageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChangePassword(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ContactUsPage(),
      );
    },
    ForgetPasswordPageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ForgetPasswordPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    Login.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Login(),
      );
    },
    LoginRegisterRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginRegisterPage(),
      );
    },
    MySubscriptionRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MySubscriptionPage(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationsPage(),
      );
    },
    OrdersHistoryRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OrdersHistoryPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PrivacyPolicyPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ProfilePage(),
      );
    },
    Register.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.Register(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Splash(),
      );
    },
    StatisticsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.StatisticsPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SubscriptionPage(),
      );
    },
    SupportedAreaPageRoute.name: (routeData) {
      final args = routeData.argsAs<SupportedAreaPageRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.SupportedAreaPage(
          key: args.key,
          fromProfile: args.fromProfile,
        ),
      );
    },
    TermsConditionsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TermsConditionsPage(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.WalletPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i21.PageRouteInfo<void> {
  const ActiveAccount({List<_i21.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChangePassword]
class ChangePasswordPageRoute extends _i21.PageRouteInfo<void> {
  const ChangePasswordPageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ChangePasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordPageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ContactUsPage]
class ContactUsRoute extends _i21.PageRouteInfo<void> {
  const ContactUsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ForgetPasswordPage]
class ForgetPasswordPageRoute extends _i21.PageRouteInfo<void> {
  const ForgetPasswordPageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ForgetPasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomePageRoute extends _i21.PageRouteInfo<void> {
  const HomePageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Login]
class Login extends _i21.PageRouteInfo<void> {
  const Login({List<_i21.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginRegisterPage]
class LoginRegisterRoute extends _i21.PageRouteInfo<void> {
  const LoginRegisterRoute({List<_i21.PageRouteInfo>? children})
      : super(
          LoginRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRegisterRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MySubscriptionPage]
class MySubscriptionRoute extends _i21.PageRouteInfo<void> {
  const MySubscriptionRoute({List<_i21.PageRouteInfo>? children})
      : super(
          MySubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySubscriptionRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationsPage]
class NotificationsPageRoute extends _i21.PageRouteInfo<void> {
  const NotificationsPageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          NotificationsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsPageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OrdersHistoryPage]
class OrdersHistoryRoute extends _i21.PageRouteInfo<void> {
  const OrdersHistoryRoute({List<_i21.PageRouteInfo>? children})
      : super(
          OrdersHistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersHistoryRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i21.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i21.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProfilePage]
class ProfilePageRoute extends _i21.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i21.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i13.Register]
class Register extends _i21.PageRouteInfo<void> {
  const Register({List<_i21.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.ResetPassword]
class ResetPassword extends _i21.PageRouteInfo<void> {
  const ResetPassword({List<_i21.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Splash]
class Splash extends _i21.PageRouteInfo<void> {
  const Splash({List<_i21.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.StatisticsPage]
class StatisticsRoute extends _i21.PageRouteInfo<void> {
  const StatisticsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SubscriptionPage]
class SubscriptionRoute extends _i21.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SupportedAreaPage]
class SupportedAreaPageRoute
    extends _i21.PageRouteInfo<SupportedAreaPageRouteArgs> {
  SupportedAreaPageRoute({
    _i22.Key? key,
    required bool fromProfile,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          SupportedAreaPageRoute.name,
          args: SupportedAreaPageRouteArgs(
            key: key,
            fromProfile: fromProfile,
          ),
          initialChildren: children,
        );

  static const String name = 'SupportedAreaPageRoute';

  static const _i21.PageInfo<SupportedAreaPageRouteArgs> page =
      _i21.PageInfo<SupportedAreaPageRouteArgs>(name);
}

class SupportedAreaPageRouteArgs {
  const SupportedAreaPageRouteArgs({
    this.key,
    required this.fromProfile,
  });

  final _i22.Key? key;

  final bool fromProfile;

  @override
  String toString() {
    return 'SupportedAreaPageRouteArgs{key: $key, fromProfile: $fromProfile}';
  }
}

/// generated route for
/// [_i19.TermsConditionsPage]
class TermsConditionsRoute extends _i21.PageRouteInfo<void> {
  const TermsConditionsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TermsConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsConditionsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.WalletPage]
class WalletRoute extends _i21.PageRouteInfo<void> {
  const WalletRoute({List<_i21.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
