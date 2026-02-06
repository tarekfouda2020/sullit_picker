// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `TRY AGAIN`
  String get tryAgain {
    return Intl.message(
      'TRY AGAIN',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `INTERNAL SERVER ERROR`
  String get error_internal_server {
    return Intl.message(
      'INTERNAL SERVER ERROR',
      name: 'error_internal_server',
      desc: '',
      args: [],
    );
  }

  /// `BAD REQUEST`
  String get error_BadRequest_Error {
    return Intl.message(
      'BAD REQUEST',
      name: 'error_BadRequest_Error',
      desc: '',
      args: [],
    );
  }

  /// `No result found`
  String get error_NotFound_Error {
    return Intl.message(
      'No result found',
      name: 'error_NotFound_Error',
      desc: '',
      args: [],
    );
  }

  /// `TIME OUT`
  String get error_Timeout_Error {
    return Intl.message(
      'TIME OUT',
      name: 'error_Timeout_Error',
      desc: '',
      args: [],
    );
  }

  /// `AN UNEXPECTED ERROR OCCURRED`
  String get error_general {
    return Intl.message(
      'AN UNEXPECTED ERROR OCCURRED',
      name: 'error_general',
      desc: '',
      args: [],
    );
  }

  /// `UNAUTHORIZED`
  String get error_Unauthorized_Error {
    return Intl.message(
      'UNAUTHORIZED',
      name: 'error_Unauthorized_Error',
      desc: '',
      args: [],
    );
  }

  /// `YOU DO NOT HAVE PRIVILEGE`
  String get error_forbidden_error {
    return Intl.message(
      'YOU DO NOT HAVE PRIVILEGE',
      name: 'error_forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during the connection`
  String get error_connection {
    return Intl.message(
      'An error occurred during the connection',
      name: 'error_connection',
      desc: '',
      args: [],
    );
  }

  /// `Connection error`
  String get error_connection_lost {
    return Intl.message(
      'Connection error',
      name: 'error_connection_lost',
      desc: '',
      args: [],
    );
  }

  /// `The connection is interrupted`
  String get error_cancel_token {
    return Intl.message(
      'The connection is interrupted',
      name: 'error_cancel_token',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get error_confirm_password {
    return Intl.message(
      'Passwords do not match',
      name: 'error_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fillField {
    return Intl.message(
      'This field is required',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Should have Upper and Lower case, numbers and special characters`
  String get passValidation {
    return Intl.message(
      'Should have Upper and Lower case, numbers and special characters',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get mailValidation {
    return Intl.message(
      'Please enter a valid email address',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password identical`
  String get confirmValidation {
    return Intl.message(
      'Please enter the password identical',
      name: 'confirmValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address`
  String get AddressValidation {
    return Intl.message(
      'Please enter the address',
      name: 'AddressValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid name`
  String get nameValidation {
    return Intl.message(
      'Please enter a valid name',
      name: 'nameValidation',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get error_socket {
    return Intl.message(
      'No internet connection',
      name: 'error_socket',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error`
  String get error_conflict {
    return Intl.message(
      'Conflict error',
      name: 'error_conflict',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get app_cancel {
    return Intl.message(
      'Cancel',
      name: 'app_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get app_confirm {
    return Intl.message(
      'Confirm',
      name: 'app_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get label_logout {
    return Intl.message(
      'Logout',
      name: 'label_logout',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get label_change_language {
    return Intl.message(
      'Change language',
      name: 'label_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get label_choose_language {
    return Intl.message(
      'Choose language',
      name: 'label_choose_language',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get label_app_language {
    return Intl.message(
      'Language',
      name: 'label_app_language',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get label_Login {
    return Intl.message(
      'Log in',
      name: 'label_Login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get label_register {
    return Intl.message(
      'Register',
      name: 'label_register',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get label_forget_pass {
    return Intl.message(
      'Forget password?',
      name: 'label_forget_pass',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get label_phone {
    return Intl.message(
      'Phone',
      name: 'label_phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get label_email {
    return Intl.message(
      'Email',
      name: 'label_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get label_password {
    return Intl.message(
      'Password',
      name: 'label_password',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get label_full_name {
    return Intl.message(
      'Full name',
      name: 'label_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get label_confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'label_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loadingText {
    return Intl.message(
      'Loading…',
      name: 'loadingText',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Add new item`
  String get add_new_item {
    return Intl.message(
      'Add new item',
      name: 'add_new_item',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Failure Actions`
  String get failureActions {
    return Intl.message(
      'Failure Actions',
      name: 'failureActions',
      desc: '',
      args: [],
    );
  }

  /// `Access denied`
  String get access_denied {
    return Intl.message(
      'Access denied',
      name: 'access_denied',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Pick`
  String get pick {
    return Intl.message(
      'Pick',
      name: 'pick',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Files size must be less than {MB} MB, {files}`
  String size_more_than_mg_error(Object MB, Object files) {
    return Intl.message(
      'Files size must be less than $MB MB, $files',
      name: 'size_more_than_mg_error',
      desc: '',
      args: [MB, files],
    );
  }

  /// `No internet connection`
  String get no_internet_connection {
    return Intl.message(
      'No internet connection',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Internet connected`
  String get internet_connected {
    return Intl.message(
      'Internet connected',
      name: 'internet_connected',
      desc: '',
      args: [],
    );
  }

  /// `No Results`
  String get noResults {
    return Intl.message(
      'No Results',
      name: 'noResults',
      desc: '',
      args: [],
    );
  }

  /// `Driver`
  String get driver {
    return Intl.message(
      'Driver',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `Driver Profile`
  String get driver_profile {
    return Intl.message(
      'Driver Profile',
      name: 'driver_profile',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back!`
  String get welcome_back {
    return Intl.message(
      'Welcome Back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Available for rides`
  String get available_for_rides {
    return Intl.message(
      'Available for rides',
      name: 'available_for_rides',
      desc: '',
      args: [],
    );
  }

  /// `Tap to go online`
  String get tap_to_go_online {
    return Intl.message(
      'Tap to go online',
      name: 'tap_to_go_online',
      desc: '',
      args: [],
    );
  }

  /// `Quick Actions`
  String get quick_actions {
    return Intl.message(
      'Quick Actions',
      name: 'quick_actions',
      desc: '',
      args: [],
    );
  }

  /// `Recent Activity`
  String get recent_activity {
    return Intl.message(
      'Recent Activity',
      name: 'recent_activity',
      desc: '',
      args: [],
    );
  }

  /// `Earnings`
  String get earnings {
    return Intl.message(
      'Earnings',
      name: 'earnings',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Total Trips`
  String get total_trips {
    return Intl.message(
      'Total Trips',
      name: 'total_trips',
      desc: '',
      args: [],
    );
  }

  /// `Today's Earnings`
  String get todays_earnings {
    return Intl.message(
      'Today\'s Earnings',
      name: 'todays_earnings',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Information`
  String get vehicle_information {
    return Intl.message(
      'Vehicle Information',
      name: 'vehicle_information',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Trip to Downtown`
  String get trip_to_downtown {
    return Intl.message(
      'Trip to Downtown',
      name: 'trip_to_downtown',
      desc: '',
      args: [],
    );
  }

  /// `hours ago`
  String get hours_ago {
    return Intl.message(
      'hours ago',
      name: 'hours_ago',
      desc: '',
      args: [],
    );
  }

  /// `Suliit Driver`
  String get app_name {
    return Intl.message(
      'Suliit Driver',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Suliit Driver`
  String get welcome_message {
    return Intl.message(
      'Welcome to Suliit Driver',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_your_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enter_your_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_your_phone {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirm_your_password {
    return Intl.message(
      'Confirm your password',
      name: 'confirm_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Restore`
  String get restore {
    return Intl.message(
      'Restore',
      name: 'restore',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_password {
    return Intl.message(
      'Current Password',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get change_password_success {
    return Intl.message(
      'Password changed successfully',
      name: 'change_password_success',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link sent to your email`
  String get reset_password_link_sent {
    return Intl.message(
      'Password reset link sent to your email',
      name: 'reset_password_link_sent',
      desc: '',
      args: [],
    );
  }

  /// `Payment completed successfully`
  String get payment_successful {
    return Intl.message(
      'Payment completed successfully',
      name: 'payment_successful',
      desc: '',
      args: [],
    );
  }

  /// `Login successful! Welcome back.`
  String get login_successful {
    return Intl.message(
      'Login successful! Welcome back.',
      name: 'login_successful',
      desc: '',
      args: [],
    );
  }

  /// `Registration successful! Please complete your subscription.`
  String get registration_successful {
    return Intl.message(
      'Registration successful! Please complete your subscription.',
      name: 'registration_successful',
      desc: '',
      args: [],
    );
  }

  /// `Location updated successfully`
  String get location_updated_successfully {
    return Intl.message(
      'Location updated successfully',
      name: 'location_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search_hint {
    return Intl.message(
      'Search...',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Orders History`
  String get orders_history {
    return Intl.message(
      'Orders History',
      name: 'orders_history',
      desc: '',
      args: [],
    );
  }

  /// `My Subscription`
  String get my_subscription {
    return Intl.message(
      'My Subscription',
      name: 'my_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `My Statistics`
  String get statistics {
    return Intl.message(
      'My Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password_question {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password_question',
      desc: '',
      args: [],
    );
  }

  /// `Login to account`
  String get login_to_account {
    return Intl.message(
      'Login to account',
      name: 'login_to_account',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get send_reset_link {
    return Intl.message(
      'Send Reset Link',
      name: 'send_reset_link',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get back_to_login {
    return Intl.message(
      'Back to Login',
      name: 'back_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email associated with your account and we'll send you a link to reset your password`
  String get reset_password_description {
    return Intl.message(
      'Enter the email associated with your account and we\'ll send you a link to reset your password',
      name: 'reset_password_description',
      desc: '',
      args: [],
    );
  }

  /// `Current password is required`
  String get current_password_required {
    return Intl.message(
      'Current password is required',
      name: 'current_password_required',
      desc: '',
      args: [],
    );
  }

  /// `New password is required`
  String get new_password_required {
    return Intl.message(
      'New password is required',
      name: 'new_password_required',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get password_min_length {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'password_min_length',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password is required`
  String get confirm_password_required {
    return Intl.message(
      'Confirm password is required',
      name: 'confirm_password_required',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `No Orders Available`
  String get no_orders_title {
    return Intl.message(
      'No Orders Available',
      name: 'no_orders_title',
      desc: '',
      args: [],
    );
  }

  /// `You are now available to receive delivery orders\nYou will be notified when a new order arrives`
  String get no_orders_description {
    return Intl.message(
      'You are now available to receive delivery orders\nYou will be notified when a new order arrives',
      name: 'no_orders_description',
      desc: '',
      args: [],
    );
  }

  /// `Available for Delivery`
  String get available_for_delivery {
    return Intl.message(
      'Available for Delivery',
      name: 'available_for_delivery',
      desc: '',
      args: [],
    );
  }

  /// `New Order!`
  String get new_order_alert {
    return Intl.message(
      'New Order!',
      name: 'new_order_alert',
      desc: '',
      args: [],
    );
  }

  /// `You have a new delivery order`
  String get new_order_message {
    return Intl.message(
      'You have a new delivery order',
      name: 'new_order_message',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get new_order {
    return Intl.message(
      'New Order',
      name: 'new_order',
      desc: '',
      args: [],
    );
  }

  /// `Accept Order`
  String get accept_order {
    return Intl.message(
      'Accept Order',
      name: 'accept_order',
      desc: '',
      args: [],
    );
  }

  /// `Decline Order`
  String get decline_order {
    return Intl.message(
      'Decline Order',
      name: 'decline_order',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Customer Information`
  String get customer_info {
    return Intl.message(
      'Customer Information',
      name: 'customer_info',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get delivery_address {
    return Intl.message(
      'Delivery Address',
      name: 'delivery_address',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Address`
  String get pickup_address {
    return Intl.message(
      'Pickup Address',
      name: 'pickup_address',
      desc: '',
      args: [],
    );
  }

  /// `Order Value`
  String get order_value {
    return Intl.message(
      'Order Value',
      name: 'order_value',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Fee`
  String get delivery_fee {
    return Intl.message(
      'Delivery Fee',
      name: 'delivery_fee',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get total_amount {
    return Intl.message(
      'Total Amount',
      name: 'total_amount',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get order_status {
    return Intl.message(
      'Order Status',
      name: 'order_status',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Accepted`
  String get accepted {
    return Intl.message(
      'Accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `In Progress`
  String get in_progress {
    return Intl.message(
      'In Progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Apple`
  String get continue_with_apple {
    return Intl.message(
      'Continue with Apple',
      name: 'continue_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continue_with_google {
    return Intl.message(
      'Continue with Google',
      name: 'continue_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get continue_with_facebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'continue_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Weideliver`
  String get weideliver {
    return Intl.message(
      'Weideliver',
      name: 'weideliver',
      desc: '',
      args: [],
    );
  }

  /// `Hello, You are welcome with us!`
  String get hello_welcome {
    return Intl.message(
      'Hello, You are welcome with us!',
      name: 'hello_welcome',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get user_name {
    return Intl.message(
      'User Name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter User Name`
  String get enter_user_name {
    return Intl.message(
      'Enter User Name',
      name: 'enter_user_name',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get e_mail {
    return Intl.message(
      'E-mail',
      name: 'e_mail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your E-mail`
  String get enter_your_e_mail {
    return Intl.message(
      'Enter Your E-mail',
      name: 'enter_your_e_mail',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your E-mail`
  String get verify_your_e_mail {
    return Intl.message(
      'Verify Your E-mail',
      name: 'verify_your_e_mail',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get id {
    return Intl.message(
      'ID',
      name: 'id',
      desc: '',
      args: [],
    );
  }

  /// `Attach ID`
  String get attach_id {
    return Intl.message(
      'Attach ID',
      name: 'attach_id',
      desc: '',
      args: [],
    );
  }

  /// `Driving licensee`
  String get driving_licensee {
    return Intl.message(
      'Driving licensee',
      name: 'driving_licensee',
      desc: '',
      args: [],
    );
  }

  /// `Attach Driving licensee`
  String get attach_driving_licensee {
    return Intl.message(
      'Attach Driving licensee',
      name: 'attach_driving_licensee',
      desc: '',
      args: [],
    );
  }

  /// `How you want to work ?`
  String get how_you_want_to_work {
    return Intl.message(
      'How you want to work ?',
      name: 'how_you_want_to_work',
      desc: '',
      args: [],
    );
  }

  /// `work at one store only`
  String get work_at_one_store_only {
    return Intl.message(
      'work at one store only',
      name: 'work_at_one_store_only',
      desc: '',
      args: [],
    );
  }

  /// `work at many stores`
  String get work_at_many_stores {
    return Intl.message(
      'work at many stores',
      name: 'work_at_many_stores',
      desc: '',
      args: [],
    );
  }

  /// `work as a freelance`
  String get work_as_a_freelance {
    return Intl.message(
      'work as a freelance',
      name: 'work_as_a_freelance',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get enter_your_password {
    return Intl.message(
      'Enter Your Password',
      name: 'enter_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your details to register`
  String get register_subtitle {
    return Intl.message(
      'Enter your details to register',
      name: 'register_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get email_required {
    return Intl.message(
      'Email is required',
      name: 'email_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get please_enter_valid_email {
    return Intl.message(
      'Please enter a valid email',
      name: 'please_enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get password_required {
    return Intl.message(
      'Password is required',
      name: 'password_required',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get password_min_characters {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'password_min_characters',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get name_required {
    return Intl.message(
      'Name is required',
      name: 'name_required',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is required`
  String get phone_number_required {
    return Intl.message(
      'Phone number is required',
      name: 'phone_number_required',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_do_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_do_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Report Problem`
  String get report_problem {
    return Intl.message(
      'Report Problem',
      name: 'report_problem',
      desc: '',
      args: [],
    );
  }

  /// `Complete Order`
  String get complete_order {
    return Intl.message(
      'Complete Order',
      name: 'complete_order',
      desc: '',
      args: [],
    );
  }

  /// `Order completed successfully!`
  String get order_completed_successfully {
    return Intl.message(
      'Order completed successfully!',
      name: 'order_completed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Problem reported successfully`
  String get problem_reported_successfully {
    return Intl.message(
      'Problem reported successfully',
      name: 'problem_reported_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get customer_name {
    return Intl.message(
      'Customer Name',
      name: 'customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Order Items`
  String get order_items {
    return Intl.message(
      'Order Items',
      name: 'order_items',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Time`
  String get estimated_time {
    return Intl.message(
      'Estimated Time',
      name: 'estimated_time',
      desc: '',
      args: [],
    );
  }

  /// `Payment failed. Please try again.`
  String get payment_failed_please_try_again {
    return Intl.message(
      'Payment failed. Please try again.',
      name: 'payment_failed_please_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the Terms & Conditions to continue`
  String get please_accept_terms {
    return Intl.message(
      'Please accept the Terms & Conditions to continue',
      name: 'please_accept_terms',
      desc: '',
      args: [],
    );
  }

  /// `Report a Problem`
  String get report_a_problem {
    return Intl.message(
      'Report a Problem',
      name: 'report_a_problem',
      desc: '',
      args: [],
    );
  }

  /// `Help us resolve the issue quickly`
  String get help_us_resolve {
    return Intl.message(
      'Help us resolve the issue quickly',
      name: 'help_us_resolve',
      desc: '',
      args: [],
    );
  }

  /// `Problem Type`
  String get problem_type {
    return Intl.message(
      'Problem Type',
      name: 'problem_type',
      desc: '',
      args: [],
    );
  }

  /// `Problem Description`
  String get problem_description {
    return Intl.message(
      'Problem Description',
      name: 'problem_description',
      desc: '',
      args: [],
    );
  }

  /// `Please describe the problem in detail...`
  String get please_describe_problem {
    return Intl.message(
      'Please describe the problem in detail...',
      name: 'please_describe_problem',
      desc: '',
      args: [],
    );
  }

  /// `Quick Options`
  String get quick_options {
    return Intl.message(
      'Quick Options',
      name: 'quick_options',
      desc: '',
      args: [],
    );
  }

  /// `Customer not available`
  String get customer_not_available {
    return Intl.message(
      'Customer not available',
      name: 'customer_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Wrong address`
  String get wrong_address {
    return Intl.message(
      'Wrong address',
      name: 'wrong_address',
      desc: '',
      args: [],
    );
  }

  /// `Payment issue`
  String get payment_issue {
    return Intl.message(
      'Payment issue',
      name: 'payment_issue',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant closed`
  String get restaurant_closed {
    return Intl.message(
      'Restaurant closed',
      name: 'restaurant_closed',
      desc: '',
      args: [],
    );
  }

  /// `Submit Report`
  String get submit_report {
    return Intl.message(
      'Submit Report',
      name: 'submit_report',
      desc: '',
      args: [],
    );
  }

  /// `Customer Issue`
  String get customer_issue {
    return Intl.message(
      'Customer Issue',
      name: 'customer_issue',
      desc: '',
      args: [],
    );
  }

  /// `Restaurant Issue`
  String get restaurant_issue {
    return Intl.message(
      'Restaurant Issue',
      name: 'restaurant_issue',
      desc: '',
      args: [],
    );
  }

  /// `App Technical Issue`
  String get app_technical_issue {
    return Intl.message(
      'App Technical Issue',
      name: 'app_technical_issue',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Out of Delivery`
  String get out_of_delivery {
    return Intl.message(
      'Out of Delivery',
      name: 'out_of_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Available For Receiving Orders`
  String get available_for_receiving_orders {
    return Intl.message(
      'Available For Receiving Orders',
      name: 'available_for_receiving_orders',
      desc: '',
      args: [],
    );
  }

  /// `Receiving From`
  String get receiving_from {
    return Intl.message(
      'Receiving From',
      name: 'receiving_from',
      desc: '',
      args: [],
    );
  }

  /// `30 minutes ago`
  String get thirty_minutes_ago {
    return Intl.message(
      '30 minutes ago',
      name: 'thirty_minutes_ago',
      desc: '',
      args: [],
    );
  }

  /// `Un-Paid`
  String get unpaid {
    return Intl.message(
      'Un-Paid',
      name: 'unpaid',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cash_on_delivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cash_on_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Send Payment Link`
  String get send_payment_link {
    return Intl.message(
      'Send Payment Link',
      name: 'send_payment_link',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Street Name`
  String get street_name {
    return Intl.message(
      'Street Name',
      name: 'street_name',
      desc: '',
      args: [],
    );
  }

  /// `Building Name`
  String get building_name {
    return Intl.message(
      'Building Name',
      name: 'building_name',
      desc: '',
      args: [],
    );
  }

  /// `Flat No.`
  String get flat_no {
    return Intl.message(
      'Flat No.',
      name: 'flat_no',
      desc: '',
      args: [],
    );
  }

  /// `Arrived`
  String get arrived {
    return Intl.message(
      'Arrived',
      name: 'arrived',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Suliit!`
  String get welcome_to_suliit {
    return Intl.message(
      'Welcome to Suliit!',
      name: 'welcome_to_suliit',
      desc: '',
      args: [],
    );
  }

  /// `Start receiving orders and begin your delivery journey with us`
  String get start_receiving_orders {
    return Intl.message(
      'Start receiving orders and begin your delivery journey with us',
      name: 'start_receiving_orders',
      desc: '',
      args: [],
    );
  }

  /// `Maybe Later`
  String get maybe_later {
    return Intl.message(
      'Maybe Later',
      name: 'maybe_later',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Select the country`
  String get select_country {
    return Intl.message(
      'Select the country',
      name: 'select_country',
      desc: '',
      args: [],
    );
  }

  /// `Verify Your Phone`
  String get verify_your_phone {
    return Intl.message(
      'Verify Your Phone',
      name: 'verify_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Yearly Subscription`
  String get yearly_subscription {
    return Intl.message(
      'Yearly Subscription',
      name: 'yearly_subscription',
      desc: '',
      args: [],
    );
  }

  /// `Enter your e-mail to recover the password`
  String get enter_email_to_recover {
    return Intl.message(
      'Enter your e-mail to recover the password',
      name: 'enter_email_to_recover',
      desc: '',
      args: [],
    );
  }

  /// `A code has been sent to`
  String get code_sent_to {
    return Intl.message(
      'A code has been sent to',
      name: 'code_sent_to',
      desc: '',
      args: [],
    );
  }

  /// `Set new password`
  String get set_new_password {
    return Intl.message(
      'Set new password',
      name: 'set_new_password',
      desc: '',
      args: [],
    );
  }

  /// `In order for us to be able to reset your password, please Enter your phone number below`
  String get reset_password_subtitle {
    return Intl.message(
      'In order for us to be able to reset your password, please Enter your phone number below',
      name: 'reset_password_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get reset_your_password {
    return Intl.message(
      'Reset your password',
      name: 'reset_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your code to reset your password`
  String get enter_code_to_reset {
    return Intl.message(
      'Enter your code to reset your password',
      name: 'enter_code_to_reset',
      desc: '',
      args: [],
    );
  }

  /// `Attach Back ID`
  String get attach_back_id {
    return Intl.message(
      'Attach Back ID',
      name: 'attach_back_id',
      desc: '',
      args: [],
    );
  }

  /// `Attach Back Driving Licensee`
  String get attach_back_driving_licensee {
    return Intl.message(
      'Attach Back Driving Licensee',
      name: 'attach_back_driving_licensee',
      desc: '',
      args: [],
    );
  }

  /// `Repeat new password`
  String get repeat_new_password {
    return Intl.message(
      'Repeat new password',
      name: 'repeat_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Password reset code sent to your email`
  String get password_reset_code_sent {
    return Intl.message(
      'Password reset code sent to your email',
      name: 'password_reset_code_sent',
      desc: '',
      args: [],
    );
  }

  /// `Current password and New password are same`
  String get current_and_new_password_same {
    return Intl.message(
      'Current password and New password are same',
      name: 'current_and_new_password_same',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get password_changed_successfully {
    return Intl.message(
      'Password changed successfully',
      name: 'password_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `the password is reset successfully`
  String get password_reset_successfully {
    return Intl.message(
      'the password is reset successfully',
      name: 'password_reset_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Your password is reset.Please login`
  String get your_password_reset_please_login {
    return Intl.message(
      'Your password is reset.Please login',
      name: 'your_password_reset_please_login',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message(
      'Code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Enter code`
  String get enter_code {
    return Intl.message(
      'Enter code',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Please Select you ID card Image`
  String get please_select_id_card_image {
    return Intl.message(
      'Please Select you ID card Image',
      name: 'please_select_id_card_image',
      desc: '',
      args: [],
    );
  }

  /// `Please Select your Back ID card Image`
  String get please_select_back_id_card_image {
    return Intl.message(
      'Please Select your Back ID card Image',
      name: 'please_select_back_id_card_image',
      desc: '',
      args: [],
    );
  }

  /// `Please Select you License Image`
  String get please_select_license_image {
    return Intl.message(
      'Please Select you License Image',
      name: 'please_select_license_image',
      desc: '',
      args: [],
    );
  }

  /// `Please Select you Back License Image`
  String get please_select_back_license_image {
    return Intl.message(
      'Please Select you Back License Image',
      name: 'please_select_back_license_image',
      desc: '',
      args: [],
    );
  }

  /// `Please Define your Work Type`
  String get please_define_work_type {
    return Intl.message(
      'Please Define your Work Type',
      name: 'please_define_work_type',
      desc: '',
      args: [],
    );
  }

  /// `Please Verify your phone number`
  String get please_verify_phone_number {
    return Intl.message(
      'Please Verify your phone number',
      name: 'please_verify_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Please Verify your Email`
  String get please_verify_email {
    return Intl.message(
      'Please Verify your Email',
      name: 'please_verify_email',
      desc: '',
      args: [],
    );
  }

  /// `You Have No Orders Now`
  String get you_have_no_orders_now {
    return Intl.message(
      'You Have No Orders Now',
      name: 'you_have_no_orders_now',
      desc: '',
      args: [],
    );
  }

  /// `Not available for receiving orders`
  String get not_available_for_receiving_orders {
    return Intl.message(
      'Not available for receiving orders',
      name: 'not_available_for_receiving_orders',
      desc: '',
      args: [],
    );
  }

  /// `Start Delivering`
  String get start_delivering {
    return Intl.message(
      'Start Delivering',
      name: 'start_delivering',
      desc: '',
      args: [],
    );
  }

  /// `Press Back again to exit`
  String get back_again_to_exit {
    return Intl.message(
      'Press Back again to exit',
      name: 'back_again_to_exit',
      desc: '',
      args: [],
    );
  }

  /// `Supported Geographical area`
  String get supported_geographical_area {
    return Intl.message(
      'Supported Geographical area',
      name: 'supported_geographical_area',
      desc: '',
      args: [],
    );
  }

  /// `My Statistics`
  String get my_statistics {
    return Intl.message(
      'My Statistics',
      name: 'my_statistics',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Work For`
  String get work_for {
    return Intl.message(
      'Work For',
      name: 'work_for',
      desc: '',
      args: [],
    );
  }

  /// `Logged out successfully`
  String get logged_out_successfully {
    return Intl.message(
      'Logged out successfully',
      name: 'logged_out_successfully',
      desc: '',
      args: [],
    );
  }

  /// `United Arab Emirates, Dubai`
  String get united_arab_emirates_dubai {
    return Intl.message(
      'United Arab Emirates, Dubai',
      name: 'united_arab_emirates_dubai',
      desc: '',
      args: [],
    );
  }

  /// `Business`
  String get business {
    return Intl.message(
      'Business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `View Order`
  String get view_order {
    return Intl.message(
      'View Order',
      name: 'view_order',
      desc: '',
      args: [],
    );
  }

  /// `Write Reason here`
  String get write_reason_here {
    return Intl.message(
      'Write Reason here',
      name: 'write_reason_here',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get paid {
    return Intl.message(
      'Paid',
      name: 'paid',
      desc: '',
      args: [],
    );
  }

  /// `User didn't respond`
  String get user_didnt_respond {
    return Intl.message(
      'User didn\'t respond',
      name: 'user_didnt_respond',
      desc: '',
      args: [],
    );
  }

  /// `A malfunction in the Motor`
  String get malfunction_in_motor {
    return Intl.message(
      'A malfunction in the Motor',
      name: 'malfunction_in_motor',
      desc: '',
      args: [],
    );
  }

  /// `Total Wallet Balance`
  String get total_wallet_balance {
    return Intl.message(
      'Total Wallet Balance',
      name: 'total_wallet_balance',
      desc: '',
      args: [],
    );
  }

  /// `View Wallet Details`
  String get view_wallet_details {
    return Intl.message(
      'View Wallet Details',
      name: 'view_wallet_details',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Last Week`
  String get last_week {
    return Intl.message(
      'Last Week',
      name: 'last_week',
      desc: '',
      args: [],
    );
  }

  /// `Filter By working store`
  String get filter_by_working_store {
    return Intl.message(
      'Filter By working store',
      name: 'filter_by_working_store',
      desc: '',
      args: [],
    );
  }

  /// `Collected`
  String get collected {
    return Intl.message(
      'Collected',
      name: 'collected',
      desc: '',
      args: [],
    );
  }

  /// `Deposited`
  String get deposited {
    return Intl.message(
      'Deposited',
      name: 'deposited',
      desc: '',
      args: [],
    );
  }

  /// `Order No.`
  String get order_no {
    return Intl.message(
      'Order No.',
      name: 'order_no',
      desc: '',
      args: [],
    );
  }

  /// `Transaction no`
  String get transaction_no {
    return Intl.message(
      'Transaction no',
      name: 'transaction_no',
      desc: '',
      args: [],
    );
  }

  /// `1 Hour Ago`
  String get one_hour_ago {
    return Intl.message(
      '1 Hour Ago',
      name: 'one_hour_ago',
      desc: '',
      args: [],
    );
  }

  /// `Total Orders`
  String get total_orders {
    return Intl.message(
      'Total Orders',
      name: 'total_orders',
      desc: '',
      args: [],
    );
  }

  /// `Total Completed Orders`
  String get total_completed_orders {
    return Intl.message(
      'Total Completed Orders',
      name: 'total_completed_orders',
      desc: '',
      args: [],
    );
  }

  /// `Total Failed Orders`
  String get total_failed_orders {
    return Intl.message(
      'Total Failed Orders',
      name: 'total_failed_orders',
      desc: '',
      args: [],
    );
  }

  /// `Completed Orders`
  String get completed_orders {
    return Intl.message(
      'Completed Orders',
      name: 'completed_orders',
      desc: '',
      args: [],
    );
  }

  /// `Failed Orders`
  String get failed_orders {
    return Intl.message(
      'Failed Orders',
      name: 'failed_orders',
      desc: '',
      args: [],
    );
  }

  /// `Sulite Store`
  String get sulite_store {
    return Intl.message(
      'Sulite Store',
      name: 'sulite_store',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Acceptance Time`
  String get acceptance_time {
    return Intl.message(
      'Acceptance Time',
      name: 'acceptance_time',
      desc: '',
      args: [],
    );
  }

  /// `Delivered Time`
  String get delivered_time {
    return Intl.message(
      'Delivered Time',
      name: 'delivered_time',
      desc: '',
      args: [],
    );
  }

  /// `Failed Reason`
  String get failed_reason {
    return Intl.message(
      'Failed Reason',
      name: 'failed_reason',
      desc: '',
      args: [],
    );
  }

  /// `Renew`
  String get renew {
    return Intl.message(
      'Renew',
      name: 'renew',
      desc: '',
      args: [],
    );
  }

  /// `Benefits :`
  String get benefits {
    return Intl.message(
      'Benefits :',
      name: 'benefits',
      desc: '',
      args: [],
    );
  }

  /// `Benefits&Policy :`
  String get benefits_policy {
    return Intl.message(
      'Benefits&Policy :',
      name: 'benefits_policy',
      desc: '',
      args: [],
    );
  }

  /// `Your subscription fees`
  String get your_subscription_fees {
    return Intl.message(
      'Your subscription fees',
      name: 'your_subscription_fees',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree {
    return Intl.message(
      'Agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `No Plans Found`
  String get no_plans_found {
    return Intl.message(
      'No Plans Found',
      name: 'no_plans_found',
      desc: '',
      args: [],
    );
  }

  /// `Manage your subscription plan`
  String get manage_subscription_plan {
    return Intl.message(
      'Manage your subscription plan',
      name: 'manage_subscription_plan',
      desc: '',
      args: [],
    );
  }

  /// `Expired with in {days} Days`
  String expired_within_days(Object days) {
    return Intl.message(
      'Expired with in $days Days',
      name: 'expired_within_days',
      desc: '',
      args: [days],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing`
  String get lorem_ipsum_placeholder {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing',
      name: 'lorem_ipsum_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `Select Pay Method`
  String get select_pay_method {
    return Intl.message(
      'Select Pay Method',
      name: 'select_pay_method',
      desc: '',
      args: [],
    );
  }

  /// `Process to pay`
  String get process_to_pay {
    return Intl.message(
      'Process to pay',
      name: 'process_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get your_name {
    return Intl.message(
      'Your Name',
      name: 'your_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter Title`
  String get enter_title {
    return Intl.message(
      'Enter Title',
      name: 'enter_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Message`
  String get enter_your_message {
    return Intl.message(
      'Enter Your Message',
      name: 'enter_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Not available yet`
  String get not_available_yet {
    return Intl.message(
      'Not available yet',
      name: 'not_available_yet',
      desc: '',
      args: [],
    );
  }

  /// `Message sent successfully`
  String get message_sent_successfully {
    return Intl.message(
      'Message sent successfully',
      name: 'message_sent_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Detect supported area`
  String get detect_supported_area {
    return Intl.message(
      'Detect supported area',
      name: 'detect_supported_area',
      desc: '',
      args: [],
    );
  }

  /// `Cover Range around the pin`
  String get cover_range_around_pin {
    return Intl.message(
      'Cover Range around the pin',
      name: 'cover_range_around_pin',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Please enable location permission`
  String get please_enable_location_permission {
    return Intl.message(
      'Please enable location permission',
      name: 'please_enable_location_permission',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update location`
  String get failed_to_update_location {
    return Intl.message(
      'Failed to update location',
      name: 'failed_to_update_location',
      desc: '',
      args: [],
    );
  }

  /// `KM`
  String get km {
    return Intl.message(
      'KM',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `No Transactions Found`
  String get no_transactions_found {
    return Intl.message(
      'No Transactions Found',
      name: 'no_transactions_found',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any transactions yet. Your transaction history will appear here once you start making transactions.`
  String get no_transactions_description {
    return Intl.message(
      'You don\'t have any transactions yet. Your transaction history will appear here once you start making transactions.',
      name: 'no_transactions_description',
      desc: '',
      args: [],
    );
  }

  /// `Order No. :`
  String get order_no_colon {
    return Intl.message(
      'Order No. :',
      name: 'order_no_colon',
      desc: '',
      args: [],
    );
  }

  /// `Assigned Orders :`
  String get assigned_orders {
    return Intl.message(
      'Assigned Orders :',
      name: 'assigned_orders',
      desc: '',
      args: [],
    );
  }

  /// `Must Picking within`
  String get must_picking_within {
    return Intl.message(
      'Must Picking within',
      name: 'must_picking_within',
      desc: '',
      args: [],
    );
  }

  /// `Start Pick`
  String get start_pick {
    return Intl.message(
      'Start Pick',
      name: 'start_pick',
      desc: '',
      args: [],
    );
  }

  /// `Continue Picking`
  String get continue_picking {
    return Intl.message(
      'Continue Picking',
      name: 'continue_picking',
      desc: '',
      args: [],
    );
  }

  /// `Assigned`
  String get assigned {
    return Intl.message(
      'Assigned',
      name: 'assigned',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get minutes {
    return Intl.message(
      'Minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Seconds`
  String get seconds {
    return Intl.message(
      'Seconds',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `Delete Product`
  String get delete_product {
    return Intl.message(
      'Delete Product',
      name: 'delete_product',
      desc: '',
      args: [],
    );
  }

  /// `Yes Replace`
  String get yes_replace {
    return Intl.message(
      'Yes Replace',
      name: 'yes_replace',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want replace this product ?`
  String get are_you_sure_replace {
    return Intl.message(
      'Are you sure you want replace this product ?',
      name: 'are_you_sure_replace',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel order`
  String get are_you_sure_cancel_order {
    return Intl.message(
      'Are you sure you want to cancel order',
      name: 'are_you_sure_cancel_order',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete product`
  String get are_you_sure_delete_product {
    return Intl.message(
      'Are you sure you want to delete product',
      name: 'are_you_sure_delete_product',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Yes Remove`
  String get yes_remove {
    return Intl.message(
      'Yes Remove',
      name: 'yes_remove',
      desc: '',
      args: [],
    );
  }

  /// `Order cancelled successfully`
  String get order_cancelled_successfully {
    return Intl.message(
      'Order cancelled successfully',
      name: 'order_cancelled_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get try_again {
    return Intl.message(
      'Try Again',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `Product Scanned`
  String get product_scanned {
    return Intl.message(
      'Product Scanned',
      name: 'product_scanned',
      desc: '',
      args: [],
    );
  }

  /// `Product not found`
  String get product_not_found {
    return Intl.message(
      'Product not found',
      name: 'product_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Send to cashier`
  String get send_to_cashier {
    return Intl.message(
      'Send to cashier',
      name: 'send_to_cashier',
      desc: '',
      args: [],
    );
  }

  /// `Dispatch`
  String get dispatch {
    return Intl.message(
      'Dispatch',
      name: 'dispatch',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get cancel_order {
    return Intl.message(
      'Cancel Order',
      name: 'cancel_order',
      desc: '',
      args: [],
    );
  }

  /// `Deleted Products`
  String get deleted_products {
    return Intl.message(
      'Deleted Products',
      name: 'deleted_products',
      desc: '',
      args: [],
    );
  }

  /// `Return`
  String get return_key {
    return Intl.message(
      'Return',
      name: 'return_key',
      desc: '',
      args: [],
    );
  }

  /// `Picked`
  String get picked {
    return Intl.message(
      'Picked',
      name: 'picked',
      desc: '',
      args: [],
    );
  }

  /// `Qnt`
  String get qnt {
    return Intl.message(
      'Qnt',
      name: 'qnt',
      desc: '',
      args: [],
    );
  }

  /// `items left`
  String get items_left {
    return Intl.message(
      'items left',
      name: 'items_left',
      desc: '',
      args: [],
    );
  }

  /// `Order accepted failed`
  String get order_accepted_failed {
    return Intl.message(
      'Order accepted failed',
      name: 'order_accepted_failed',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `mmm@info.com`
  String get email_placeholder {
    return Intl.message(
      'mmm@info.com',
      name: 'email_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `0000000`
  String get phone_placeholder {
    return Intl.message(
      '0000000',
      name: 'phone_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `No Terms Yet`
  String get no_terms_yet {
    return Intl.message(
      'No Terms Yet',
      name: 'no_terms_yet',
      desc: '',
      args: [],
    );
  }

  /// `No Notifications received yet!`
  String get no_notifications_yet {
    return Intl.message(
      'No Notifications received yet!',
      name: 'no_notifications_yet',
      desc: '',
      args: [],
    );
  }

  /// `items left`
  String get items_left_suffix {
    return Intl.message(
      'items left',
      name: 'items_left_suffix',
      desc: '',
      args: [],
    );
  }

  /// `User didn't give access to replace the product, you can just remove it from order`
  String get user_no_replace_access {
    return Intl.message(
      'User didn\'t give access to replace the product, you can just remove it from order',
      name: 'user_no_replace_access',
      desc: '',
      args: [],
    );
  }

  /// `Is the weight equals`
  String get is_weight_equals {
    return Intl.message(
      'Is the weight equals',
      name: 'is_weight_equals',
      desc: '',
      args: [],
    );
  }

  /// `Equals`
  String get equals {
    return Intl.message(
      'Equals',
      name: 'equals',
      desc: '',
      args: [],
    );
  }

  /// `Less Than`
  String get less_than {
    return Intl.message(
      'Less Than',
      name: 'less_than',
      desc: '',
      args: [],
    );
  }

  /// `What is the New Weight?`
  String get what_is_new_weight {
    return Intl.message(
      'What is the New Weight?',
      name: 'what_is_new_weight',
      desc: '',
      args: [],
    );
  }

  /// `Enter new weight`
  String get enter_new_weight {
    return Intl.message(
      'Enter new weight',
      name: 'enter_new_weight',
      desc: '',
      args: [],
    );
  }

  /// `The new weight must not less than 750 gm`
  String get weight_minimum {
    return Intl.message(
      'The new weight must not less than 750 gm',
      name: 'weight_minimum',
      desc: '',
      args: [],
    );
  }

  /// `Fresh Whole Chicken`
  String get fresh_whole_chicken {
    return Intl.message(
      'Fresh Whole Chicken',
      name: 'fresh_whole_chicken',
      desc: '',
      args: [],
    );
  }

  /// `Order ready for delivery`
  String get order_ready_for_delivery {
    return Intl.message(
      'Order ready for delivery',
      name: 'order_ready_for_delivery',
      desc: '',
      args: [],
    );
  }

  /// `No. of Items `
  String get no_of_items {
    return Intl.message(
      'No. of Items ',
      name: 'no_of_items',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get unavailable {
    return Intl.message(
      'Unavailable',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get logoutAlert {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logoutAlert',
      desc: '',
      args: [],
    );
  }

  /// `Cannot replace with product having higher price than {price}`
  String cannot_replace_higher_price(Object price) {
    return Intl.message(
      'Cannot replace with product having higher price than $price',
      name: 'cannot_replace_higher_price',
      desc: '',
      args: [price],
    );
  }

  /// `Price should be less than or equal to`
  String get price_should_be_less_than_or_equal_to {
    return Intl.message(
      'Price should be less than or equal to',
      name: 'price_should_be_less_than_or_equal_to',
      desc: '',
      args: [],
    );
  }

  /// `The new weight must be between`
  String get new_weight_must_be_between {
    return Intl.message(
      'The new weight must be between',
      name: 'new_weight_must_be_between',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Enter new price`
  String get enter_new_price {
    return Intl.message(
      'Enter new price',
      name: 'enter_new_price',
      desc: '',
      args: [],
    );
  }

  /// `Barcode : `
  String get barcode {
    return Intl.message(
      'Barcode : ',
      name: 'barcode',
      desc: '',
      args: [],
    );
  }

  /// `The new weight must not be less than`
  String get new_weight_must_not_less_than {
    return Intl.message(
      'The new weight must not be less than',
      name: 'new_weight_must_not_less_than',
      desc: '',
      args: [],
    );
  }

  /// `Confirm return the original product?`
  String get confirm_return_original_product {
    return Intl.message(
      'Confirm return the original product?',
      name: 'confirm_return_original_product',
      desc: '',
      args: [],
    );
  }

  /// `Contact with customer using`
  String get contact_with_customer_using {
    return Intl.message(
      'Contact with customer using',
      name: 'contact_with_customer_using',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get whatsapp {
    return Intl.message(
      'WhatsApp',
      name: 'whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Customer phone`
  String get customer_phone {
    return Intl.message(
      'Customer phone',
      name: 'customer_phone',
      desc: '',
      args: [],
    );
  }

  /// `seconds ago`
  String get seconds_ago {
    return Intl.message(
      'seconds ago',
      name: 'seconds_ago',
      desc: '',
      args: [],
    );
  }

  /// `minutes ago`
  String get minutes_ago {
    return Intl.message(
      'minutes ago',
      name: 'minutes_ago',
      desc: '',
      args: [],
    );
  }

  /// `days ago`
  String get days_ago {
    return Intl.message(
      'days ago',
      name: 'days_ago',
      desc: '',
      args: [],
    );
  }

  /// `weeks ago`
  String get weeks_ago {
    return Intl.message(
      'weeks ago',
      name: 'weeks_ago',
      desc: '',
      args: [],
    );
  }

  /// `months ago`
  String get months_ago {
    return Intl.message(
      'months ago',
      name: 'months_ago',
      desc: '',
      args: [],
    );
  }

  /// `years ago`
  String get years_ago {
    return Intl.message(
      'years ago',
      name: 'years_ago',
      desc: '',
      args: [],
    );
  }

  /// `ago`
  String get ago {
    return Intl.message(
      'ago',
      name: 'ago',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get month {
    return Intl.message(
      'month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `year`
  String get year {
    return Intl.message(
      'year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `week`
  String get week {
    return Intl.message(
      'week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `No date available`
  String get no_date_available {
    return Intl.message(
      'No date available',
      name: 'no_date_available',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `No orders found`
  String get no_orders_found {
    return Intl.message(
      'No orders found',
      name: 'no_orders_found',
      desc: '',
      args: [],
    );
  }

  /// `Previous Orders`
  String get previous_orders {
    return Intl.message(
      'Previous Orders',
      name: 'previous_orders',
      desc: '',
      args: [],
    );
  }

  /// `status`
  String get status {
    return Intl.message(
      'status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Start pick at`
  String get start_pick_at {
    return Intl.message(
      'Start pick at',
      name: 'start_pick_at',
      desc: '',
      args: [],
    );
  }

  /// `Update Reason...?`
  String get update_reason {
    return Intl.message(
      'Update Reason...?',
      name: 'update_reason',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Confirm number of used bags`
  String get confirm_used_bags {
    return Intl.message(
      'Confirm number of used bags',
      name: 'confirm_used_bags',
      desc: '',
      args: [],
    );
  }

  /// `Number of bags used`
  String get enter_bag_number {
    return Intl.message(
      'Number of bags used',
      name: 'enter_bag_number',
      desc: '',
      args: [],
    );
  }

  /// `Complete Dispatch`
  String get complete_dispatch {
    return Intl.message(
      'Complete Dispatch',
      name: 'complete_dispatch',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while getting your device info. Please try again later.`
  String get device_token_error {
    return Intl.message(
      'Something went wrong while getting your device info. Please try again later.',
      name: 'device_token_error',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Enter the new price`
  String get enter_the_new_price {
    return Intl.message(
      'Enter the new price',
      name: 'enter_the_new_price',
      desc: '',
      args: [],
    );
  }

  /// `Pick All`
  String get pick_all {
    return Intl.message(
      'Pick All',
      name: 'pick_all',
      desc: '',
      args: [],
    );
  }

  /// `Your note for update...`
  String get picker_note_hint {
    return Intl.message(
      'Your note for update...',
      name: 'picker_note_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid number`
  String get please_enter_a_valid_number {
    return Intl.message(
      'Please enter a valid number',
      name: 'please_enter_a_valid_number',
      desc: '',
      args: [],
    );
  }

  /// `Price must not exceed`
  String get price_must_not_exceed {
    return Intl.message(
      'Price must not exceed',
      name: 'price_must_not_exceed',
      desc: '',
      args: [],
    );
  }

  /// `A new version available, Please update to keep using app`
  String get force_update_message {
    return Intl.message(
      'A new version available, Please update to keep using app',
      name: 'force_update_message',
      desc: '',
      args: [],
    );
  }

  /// `Modify number of used bags`
  String get modify_bags_number {
    return Intl.message(
      'Modify number of used bags',
      name: 'modify_bags_number',
      desc: '',
      args: [],
    );
  }

  /// `Number of used bags`
  String get bags_number {
    return Intl.message(
      'Number of used bags',
      name: 'bags_number',
      desc: '',
      args: [],
    );
  }

  /// `bags`
  String get bags {
    return Intl.message(
      'bags',
      name: 'bags',
      desc: '',
      args: [],
    );
  }

  /// `No edit number`
  String get no_edit_number {
    return Intl.message(
      'No edit number',
      name: 'no_edit_number',
      desc: '',
      args: [],
    );
  }

  /// `Item Price : `
  String get item_price {
    return Intl.message(
      'Item Price : ',
      name: 'item_price',
      desc: '',
      args: [],
    );
  }

  /// `Edited - `
  String get edited {
    return Intl.message(
      'Edited - ',
      name: 'edited',
      desc: '',
      args: [],
    );
  }

  /// `Modify Price`
  String get modify_price {
    return Intl.message(
      'Modify Price',
      name: 'modify_price',
      desc: '',
      args: [],
    );
  }

  /// `is price equal`
  String get is_price_equal {
    return Intl.message(
      'is price equal',
      name: 'is_price_equal',
      desc: '',
      args: [],
    );
  }

  /// `Replaced item`
  String get replaced_item {
    return Intl.message(
      'Replaced item',
      name: 'replaced_item',
      desc: '',
      args: [],
    );
  }

  /// `Modify Reason`
  String get modify_reason {
    return Intl.message(
      'Modify Reason',
      name: 'modify_reason',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal (Exclusive VAT)`
  String get subtotal_exclusive_vat {
    return Intl.message(
      'Subtotal (Exclusive VAT)',
      name: 'subtotal_exclusive_vat',
      desc: '',
      args: [],
    );
  }

  /// `Environment Fee`
  String get environment_fee {
    return Intl.message(
      'Environment Fee',
      name: 'environment_fee',
      desc: '',
      args: [],
    );
  }

  /// `Total VAT`
  String get total_vat {
    return Intl.message(
      'Total VAT',
      name: 'total_vat',
      desc: '',
      args: [],
    );
  }

  /// `Grand Total`
  String get grand_total {
    return Intl.message(
      'Grand Total',
      name: 'grand_total',
      desc: '',
      args: [],
    );
  }

  /// `New product qnt`
  String get new_product_qnt {
    return Intl.message(
      'New product qnt',
      name: 'new_product_qnt',
      desc: '',
      args: [],
    );
  }

  /// `New count can not be more than`
  String get new_count_max_error {
    return Intl.message(
      'New count can not be more than',
      name: 'new_count_max_error',
      desc: '',
      args: [],
    );
  }

  /// `Show more`
  String get show_more {
    return Intl.message(
      'Show more',
      name: 'show_more',
      desc: '',
      args: [],
    );
  }

  /// `Show less`
  String get show_less {
    return Intl.message(
      'Show less',
      name: 'show_less',
      desc: '',
      args: [],
    );
  }

  /// `with barcode:`
  String get with_barcode {
    return Intl.message(
      'with barcode:',
      name: 'with_barcode',
      desc: '',
      args: [],
    );
  }

  /// `Not available`
  String get not_available {
    return Intl.message(
      'Not available',
      name: 'not_available',
      desc: '',
      args: [],
    );
  }

  /// `Reason`
  String get reason {
    return Intl.message(
      'Reason',
      name: 'reason',
      desc: '',
      args: [],
    );
  }

  /// `Modified`
  String get modified {
    return Intl.message(
      'Modified',
      name: 'modified',
      desc: '',
      args: [],
    );
  }

  /// `Replaced`
  String get replaced {
    return Intl.message(
      'Replaced',
      name: 'replaced',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'bn'),
      Locale.fromSubtags(languageCode: 'ur'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
