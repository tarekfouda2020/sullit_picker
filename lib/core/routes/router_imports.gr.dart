// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i25;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter_tdd/features/auth/domain/entity/register_params.dart'
    as _i30;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/app_instructions/app_instructions_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password_imports.dart'
    as _i27;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/login_register/login_register.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash.dart'
    as _i19;
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us.dart'
    as _i5;
import 'package:flutter_tdd/features/general/presentation/pages/privacy_policy/privacy_policy.dart'
    as _i15;
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area.dart'
    as _i22;
import 'package:flutter_tdd/features/general/presentation/pages/supported_area/supported_area_imports.dart'
    as _i29;
import 'package:flutter_tdd/features/general/presentation/pages/terms_conditions/terms_conditions.dart'
    as _i23;
import 'package:flutter_tdd/features/home/presentation/pages/home/home.dart'
    as _i7;
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page.dart'
    as _i16;
import 'package:flutter_tdd/features/home/presentation/pages/stores/stores_page.dart'
    as _i20;
import 'package:flutter_tdd/features/notifications/presentation/pages/notification_page/notification_page.dart'
    as _i12;
import 'package:flutter_tdd/features/orders/presentation/pages/new_orders/new_orders.dart'
    as _i11;
import 'package:flutter_tdd/features/orders/presentation/pages/orders_history/orders_history.dart'
    as _i13;
import 'package:flutter_tdd/features/orders/presentation/pages/statistics/statistics_page.dart'
    as _i9;
import 'package:flutter_tdd/features/payment/payment/payment_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/subscriptions/presentation/pages/my_subscription/my_subscription.dart'
    as _i10;
import 'package:flutter_tdd/features/subscriptions/presentation/pages/subscription/subscription.dart'
    as _i21;
import 'package:flutter_tdd/features/subscriptions/presentation/pages/subscription/subscription_imports.dart'
    as _i28;
import 'package:flutter_tdd/features/wallet/presentation/pages/wallet_page/wallet.dart'
    as _i24;

abstract class $AppRouter extends _i25.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i25.PageFactory> pagesMap = {
    ActiveAccountPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActiveAccountPageRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActiveAccount(
          key: args.key,
          emailOrPhone: args.emailOrPhone,
        ),
      );
    },
    AppInstructionsRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppInstructions(),
      );
    },
    ChangePasswordPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChangePassword(),
      );
    },
    ConfirmResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmResetPasswordPageRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ConfirmResetPassword(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ContactUsPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ContactUsPage(),
      );
    },
    ForgetPasswordPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPasswordPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    LoginRegisterRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginRegisterPage(),
      );
    },
    StatisticsPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyStatisticsPage(),
      );
    },
    MySubscriptionPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MySubscriptionPage(),
      );
    },
    NewOrdersPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NewOrders(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.NotificationsPage(),
      );
    },
    OrdersHistoryPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.OrdersHistoryPage(),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.Payment(
          key: args.key,
          transactionUrl: args.transactionUrl,
        ),
      );
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.PrivacyPolicy(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.ProfilePage(),
      );
    },
    Register.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.Register(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.Splash(),
      );
    },
    StoresPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.StoresPage(),
      );
    },
    SubscriptionPageRoute.name: (routeData) {
      final args = routeData.argsAs<SubscriptionPageRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i21.SubscriptionPage(
          key: args.key,
          fromAuth: args.fromAuth,
        ),
      );
    },
    SupportedAreaPageRoute.name: (routeData) {
      final args = routeData.argsAs<SupportedAreaPageRouteArgs>();
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.SupportedAreaPage(
          key: args.key,
          fromProfile: args.fromProfile,
          registerParams: args.registerParams,
        ),
      );
    },
    TermsConditionsPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.TermsConditions(),
      );
    },
    WalletPageRoute.name: (routeData) {
      return _i25.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.WalletPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccountPageRoute
    extends _i25.PageRouteInfo<ActiveAccountPageRouteArgs> {
  ActiveAccountPageRoute({
    _i26.Key? key,
    required String emailOrPhone,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          ActiveAccountPageRoute.name,
          args: ActiveAccountPageRouteArgs(
            key: key,
            emailOrPhone: emailOrPhone,
          ),
          initialChildren: children,
        );

  static const String name = 'ActiveAccountPageRoute';

  static const _i25.PageInfo<ActiveAccountPageRouteArgs> page =
      _i25.PageInfo<ActiveAccountPageRouteArgs>(name);
}

class ActiveAccountPageRouteArgs {
  const ActiveAccountPageRouteArgs({
    this.key,
    required this.emailOrPhone,
  });

  final _i26.Key? key;

  final String emailOrPhone;

  @override
  String toString() {
    return 'ActiveAccountPageRouteArgs{key: $key, emailOrPhone: $emailOrPhone}';
  }
}

/// generated route for
/// [_i2.AppInstructions]
class AppInstructionsRoute extends _i25.PageRouteInfo<void> {
  const AppInstructionsRoute({List<_i25.PageRouteInfo>? children})
      : super(
          AppInstructionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppInstructionsRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChangePassword]
class ChangePasswordPageRoute extends _i25.PageRouteInfo<void> {
  const ChangePasswordPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          ChangePasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ConfirmResetPassword]
class ConfirmResetPasswordPageRoute
    extends _i25.PageRouteInfo<ConfirmResetPasswordPageRouteArgs> {
  ConfirmResetPasswordPageRoute({
    _i27.Key? key,
    required String email,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          ConfirmResetPasswordPageRoute.name,
          args: ConfirmResetPasswordPageRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmResetPasswordPageRoute';

  static const _i25.PageInfo<ConfirmResetPasswordPageRouteArgs> page =
      _i25.PageInfo<ConfirmResetPasswordPageRouteArgs>(name);
}

class ConfirmResetPasswordPageRouteArgs {
  const ConfirmResetPasswordPageRouteArgs({
    this.key,
    required this.email,
  });

  final _i27.Key? key;

  final String email;

  @override
  String toString() {
    return 'ConfirmResetPasswordPageRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i5.ContactUsPage]
class ContactUsPageRoute extends _i25.PageRouteInfo<void> {
  const ContactUsPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          ContactUsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ForgetPasswordPage]
class ForgetPasswordPageRoute extends _i25.PageRouteInfo<void> {
  const ForgetPasswordPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          ForgetPasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i25.PageRouteInfo<void> {
  const HomePageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginRegisterPage]
class LoginRegisterRoute extends _i25.PageRouteInfo<void> {
  const LoginRegisterRoute({List<_i25.PageRouteInfo>? children})
      : super(
          LoginRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRegisterRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MyStatisticsPage]
class StatisticsPageRoute extends _i25.PageRouteInfo<void> {
  const StatisticsPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          StatisticsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MySubscriptionPage]
class MySubscriptionPageRoute extends _i25.PageRouteInfo<void> {
  const MySubscriptionPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          MySubscriptionPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'MySubscriptionPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NewOrders]
class NewOrdersPageRoute extends _i25.PageRouteInfo<void> {
  const NewOrdersPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          NewOrdersPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewOrdersPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i12.NotificationsPage]
class NotificationsPageRoute extends _i25.PageRouteInfo<void> {
  const NotificationsPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          NotificationsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i13.OrdersHistoryPage]
class OrdersHistoryPageRoute extends _i25.PageRouteInfo<void> {
  const OrdersHistoryPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          OrdersHistoryPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersHistoryPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i14.Payment]
class PaymentRoute extends _i25.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    _i26.Key? key,
    required String transactionUrl,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            key: key,
            transactionUrl: transactionUrl,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const _i25.PageInfo<PaymentRouteArgs> page =
      _i25.PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    this.key,
    required this.transactionUrl,
  });

  final _i26.Key? key;

  final String transactionUrl;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, transactionUrl: $transactionUrl}';
  }
}

/// generated route for
/// [_i15.PrivacyPolicy]
class PrivacyPolicyPageRoute extends _i25.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          PrivacyPolicyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i16.ProfilePage]
class ProfilePageRoute extends _i25.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Register]
class Register extends _i25.PageRouteInfo<void> {
  const Register({List<_i25.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i18.ResetPassword]
class ResetPassword extends _i25.PageRouteInfo<void> {
  const ResetPassword({List<_i25.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i19.Splash]
class Splash extends _i25.PageRouteInfo<void> {
  const Splash({List<_i25.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i20.StoresPage]
class StoresPageRoute extends _i25.PageRouteInfo<void> {
  const StoresPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          StoresPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StoresPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SubscriptionPage]
class SubscriptionPageRoute
    extends _i25.PageRouteInfo<SubscriptionPageRouteArgs> {
  SubscriptionPageRoute({
    _i28.Key? key,
    required bool fromAuth,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          SubscriptionPageRoute.name,
          args: SubscriptionPageRouteArgs(
            key: key,
            fromAuth: fromAuth,
          ),
          initialChildren: children,
        );

  static const String name = 'SubscriptionPageRoute';

  static const _i25.PageInfo<SubscriptionPageRouteArgs> page =
      _i25.PageInfo<SubscriptionPageRouteArgs>(name);
}

class SubscriptionPageRouteArgs {
  const SubscriptionPageRouteArgs({
    this.key,
    required this.fromAuth,
  });

  final _i28.Key? key;

  final bool fromAuth;

  @override
  String toString() {
    return 'SubscriptionPageRouteArgs{key: $key, fromAuth: $fromAuth}';
  }
}

/// generated route for
/// [_i22.SupportedAreaPage]
class SupportedAreaPageRoute
    extends _i25.PageRouteInfo<SupportedAreaPageRouteArgs> {
  SupportedAreaPageRoute({
    _i29.Key? key,
    required bool fromProfile,
    _i30.RegisterParams? registerParams,
    List<_i25.PageRouteInfo>? children,
  }) : super(
          SupportedAreaPageRoute.name,
          args: SupportedAreaPageRouteArgs(
            key: key,
            fromProfile: fromProfile,
            registerParams: registerParams,
          ),
          initialChildren: children,
        );

  static const String name = 'SupportedAreaPageRoute';

  static const _i25.PageInfo<SupportedAreaPageRouteArgs> page =
      _i25.PageInfo<SupportedAreaPageRouteArgs>(name);
}

class SupportedAreaPageRouteArgs {
  const SupportedAreaPageRouteArgs({
    this.key,
    required this.fromProfile,
    this.registerParams,
  });

  final _i29.Key? key;

  final bool fromProfile;

  final _i30.RegisterParams? registerParams;

  @override
  String toString() {
    return 'SupportedAreaPageRouteArgs{key: $key, fromProfile: $fromProfile, registerParams: $registerParams}';
  }
}

/// generated route for
/// [_i23.TermsConditions]
class TermsConditionsPageRoute extends _i25.PageRouteInfo<void> {
  const TermsConditionsPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          TermsConditionsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsConditionsPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}

/// generated route for
/// [_i24.WalletPage]
class WalletPageRoute extends _i25.PageRouteInfo<void> {
  const WalletPageRoute({List<_i25.PageRouteInfo>? children})
      : super(
          WalletPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletPageRoute';

  static const _i25.PageInfo<void> page = _i25.PageInfo<void>(name);
}
