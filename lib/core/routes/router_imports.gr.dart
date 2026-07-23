// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/cupertino.dart' as _i25;
import 'package:flutter/material.dart' as _i21;
import 'package:flutter_tdd/core/helpers/export.dart' as _i24;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/change_password/change_password.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/confirm_reset_password/confirm_reset_password_imports.dart'
    as _i22;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/login_view/login_view.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i16;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash.dart'
    as _i18;
import 'package:flutter_tdd/features/general/presentation/pages/contact_us/contact_us.dart'
    as _i4;
import 'package:flutter_tdd/features/general/presentation/pages/image_zoom/image_zoom.dart'
    as _i7;
import 'package:flutter_tdd/features/general/presentation/pages/privacy_policy/privacy_policy.dart'
    as _i14;
import 'package:flutter_tdd/features/general/presentation/pages/terms_conditions/terms_conditions.dart'
    as _i19;
import 'package:flutter_tdd/features/home/presentation/pages/home/home.dart'
    as _i6;
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details.dart'
    as _i10;
import 'package:flutter_tdd/features/home/presentation/pages/order_details/order_details_imports.dart'
    as _i23;
import 'package:flutter_tdd/features/home/presentation/pages/order_history/order_history.dart'
    as _i11;
import 'package:flutter_tdd/features/home/presentation/pages/order_history_details/order_history_details.dart'
    as _i12;
import 'package:flutter_tdd/features/home/presentation/pages/prescription_order/prescription_order_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/home/presentation/pages/profile_page/profile_page.dart'
    as _i15;
import 'package:flutter_tdd/features/notifications/presentation/pages/notification_page/notification_page.dart'
    as _i9;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    ActiveAccountPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActiveAccountPageRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActiveAccount(
          key: args.key,
          emailOrPhone: args.emailOrPhone,
        ),
      );
    },
    ChangePasswordPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChangePassword(),
      );
    },
    ConfirmResetPasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConfirmResetPasswordPageRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ConfirmResetPassword(
          key: args.key,
          email: args.email,
        ),
      );
    },
    ContactUsPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ContactUsPage(),
      );
    },
    ForgetPasswordPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPasswordPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    ImageZoomRoute.name: (routeData) {
      final args = routeData.argsAs<ImageZoomRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ImageZoom(
          key: args.key,
          image: args.image,
        ),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginView(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationsPage(),
      );
    },
    OrderDetailsRouteName.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsRouteNameArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.OrderDetails(
          key: args.key,
          id: args.id,
          targetTime: args.targetTime,
        ),
      );
    },
    OrderHistoryPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OrderHistory(),
      );
    },
    OrderHistoryDetailsPage.name: (routeData) {
      final args = routeData.argsAs<OrderHistoryDetailsPageArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.OrderHistoryDetails(
          key: args.key,
          id: args.id,
        ),
      );
    },
    PrescriptionOrderRoute.name: (routeData) {
      final args = routeData.argsAs<PrescriptionOrderRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PrescriptionOrder(
          key: args.key,
          orderId: args.orderId,
        ),
      );
    },
    PrivacyPolicyPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.PrivacyPolicy(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ProfilePage(),
      );
    },
    Register.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.Register(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ResetPassword(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.Splash(),
      );
    },
    TermsConditionsPageRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.TermsConditions(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccountPageRoute
    extends _i20.PageRouteInfo<ActiveAccountPageRouteArgs> {
  ActiveAccountPageRoute({
    _i21.Key? key,
    required String emailOrPhone,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ActiveAccountPageRoute.name,
          args: ActiveAccountPageRouteArgs(
            key: key,
            emailOrPhone: emailOrPhone,
          ),
          initialChildren: children,
        );

  static const String name = 'ActiveAccountPageRoute';

  static const _i20.PageInfo<ActiveAccountPageRouteArgs> page =
      _i20.PageInfo<ActiveAccountPageRouteArgs>(name);
}

class ActiveAccountPageRouteArgs {
  const ActiveAccountPageRouteArgs({
    this.key,
    required this.emailOrPhone,
  });

  final _i21.Key? key;

  final String emailOrPhone;

  @override
  String toString() {
    return 'ActiveAccountPageRouteArgs{key: $key, emailOrPhone: $emailOrPhone}';
  }
}

/// generated route for
/// [_i2.ChangePassword]
class ChangePasswordPageRoute extends _i20.PageRouteInfo<void> {
  const ChangePasswordPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ChangePasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ConfirmResetPassword]
class ConfirmResetPasswordPageRoute
    extends _i20.PageRouteInfo<ConfirmResetPasswordPageRouteArgs> {
  ConfirmResetPasswordPageRoute({
    _i22.Key? key,
    required String email,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ConfirmResetPasswordPageRoute.name,
          args: ConfirmResetPasswordPageRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ConfirmResetPasswordPageRoute';

  static const _i20.PageInfo<ConfirmResetPasswordPageRouteArgs> page =
      _i20.PageInfo<ConfirmResetPasswordPageRouteArgs>(name);
}

class ConfirmResetPasswordPageRouteArgs {
  const ConfirmResetPasswordPageRouteArgs({
    this.key,
    required this.email,
  });

  final _i22.Key? key;

  final String email;

  @override
  String toString() {
    return 'ConfirmResetPasswordPageRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i4.ContactUsPage]
class ContactUsPageRoute extends _i20.PageRouteInfo<void> {
  const ContactUsPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ContactUsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ForgetPasswordPage]
class ForgetPasswordPageRoute extends _i20.PageRouteInfo<void> {
  const ForgetPasswordPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ForgetPasswordPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomePageRoute extends _i20.PageRouteInfo<void> {
  const HomePageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ImageZoom]
class ImageZoomRoute extends _i20.PageRouteInfo<ImageZoomRouteArgs> {
  ImageZoomRoute({
    _i21.Key? key,
    required String image,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ImageZoomRoute.name,
          args: ImageZoomRouteArgs(
            key: key,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageZoomRoute';

  static const _i20.PageInfo<ImageZoomRouteArgs> page =
      _i20.PageInfo<ImageZoomRouteArgs>(name);
}

class ImageZoomRouteArgs {
  const ImageZoomRouteArgs({
    this.key,
    required this.image,
  });

  final _i21.Key? key;

  final String image;

  @override
  String toString() {
    return 'ImageZoomRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i8.LoginView]
class LoginViewRoute extends _i20.PageRouteInfo<void> {
  const LoginViewRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LoginViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginViewRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationsPage]
class NotificationsPageRoute extends _i20.PageRouteInfo<void> {
  const NotificationsPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          NotificationsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OrderDetails]
class OrderDetailsRouteName
    extends _i20.PageRouteInfo<OrderDetailsRouteNameArgs> {
  OrderDetailsRouteName({
    _i23.Key? key,
    required int id,
    required DateTime targetTime,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          OrderDetailsRouteName.name,
          args: OrderDetailsRouteNameArgs(
            key: key,
            id: id,
            targetTime: targetTime,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsRouteName';

  static const _i20.PageInfo<OrderDetailsRouteNameArgs> page =
      _i20.PageInfo<OrderDetailsRouteNameArgs>(name);
}

class OrderDetailsRouteNameArgs {
  const OrderDetailsRouteNameArgs({
    this.key,
    required this.id,
    required this.targetTime,
  });

  final _i23.Key? key;

  final int id;

  final DateTime targetTime;

  @override
  String toString() {
    return 'OrderDetailsRouteNameArgs{key: $key, id: $id, targetTime: $targetTime}';
  }
}

/// generated route for
/// [_i11.OrderHistory]
class OrderHistoryPageRoute extends _i20.PageRouteInfo<void> {
  const OrderHistoryPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          OrderHistoryPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderHistoryPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.OrderHistoryDetails]
class OrderHistoryDetailsPage
    extends _i20.PageRouteInfo<OrderHistoryDetailsPageArgs> {
  OrderHistoryDetailsPage({
    _i24.Key? key,
    required int id,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          OrderHistoryDetailsPage.name,
          args: OrderHistoryDetailsPageArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderHistoryDetailsPage';

  static const _i20.PageInfo<OrderHistoryDetailsPageArgs> page =
      _i20.PageInfo<OrderHistoryDetailsPageArgs>(name);
}

class OrderHistoryDetailsPageArgs {
  const OrderHistoryDetailsPageArgs({
    this.key,
    required this.id,
  });

  final _i24.Key? key;

  final int id;

  @override
  String toString() {
    return 'OrderHistoryDetailsPageArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i13.PrescriptionOrder]
class PrescriptionOrderRoute
    extends _i20.PageRouteInfo<PrescriptionOrderRouteArgs> {
  PrescriptionOrderRoute({
    _i25.Key? key,
    required int orderId,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          PrescriptionOrderRoute.name,
          args: PrescriptionOrderRouteArgs(
            key: key,
            orderId: orderId,
          ),
          initialChildren: children,
        );

  static const String name = 'PrescriptionOrderRoute';

  static const _i20.PageInfo<PrescriptionOrderRouteArgs> page =
      _i20.PageInfo<PrescriptionOrderRouteArgs>(name);
}

class PrescriptionOrderRouteArgs {
  const PrescriptionOrderRouteArgs({
    this.key,
    required this.orderId,
  });

  final _i25.Key? key;

  final int orderId;

  @override
  String toString() {
    return 'PrescriptionOrderRouteArgs{key: $key, orderId: $orderId}';
  }
}

/// generated route for
/// [_i14.PrivacyPolicy]
class PrivacyPolicyPageRoute extends _i20.PageRouteInfo<void> {
  const PrivacyPolicyPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          PrivacyPolicyPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ProfilePage]
class ProfilePageRoute extends _i20.PageRouteInfo<void> {
  const ProfilePageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ProfilePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.Register]
class Register extends _i20.PageRouteInfo<void> {
  const Register({List<_i20.PageRouteInfo>? children})
      : super(
          Register.name,
          initialChildren: children,
        );

  static const String name = 'Register';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i17.ResetPassword]
class ResetPassword extends _i20.PageRouteInfo<void> {
  const ResetPassword({List<_i20.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i18.Splash]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TermsConditions]
class TermsConditionsPageRoute extends _i20.PageRouteInfo<void> {
  const TermsConditionsPageRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TermsConditionsPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsConditionsPageRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
