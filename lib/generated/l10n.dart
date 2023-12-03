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

  /// `Please enter this field`
  String get fillField {
    return Intl.message(
      'Please enter this field',
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

  /// `Please enter a valid email`
  String get mailValidation {
    return Intl.message(
      'Please enter a valid email',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile phone`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile phone',
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

  /// `Should be more than 8 and less than 30`
  String get nameValidation {
    return Intl.message(
      'Should be more than 8 and less than 30',
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

  /// `Login`
  String get label_Login {
    return Intl.message(
      'Login',
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

  /// `Birth date`
  String get label_birthdate {
    return Intl.message(
      'Birth date',
      name: 'label_birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Change theme`
  String get label_change_theme {
    return Intl.message(
      'Change theme',
      name: 'label_change_theme',
      desc: '',
      args: [],
    );
  }

  /// `I agree to terms of use.`
  String get label_terms_of_use {
    return Intl.message(
      'I agree to terms of use.',
      name: 'label_terms_of_use',
      desc: '',
      args: [],
    );
  }

  /// `Registered already? Login`
  String get label_registered_already {
    return Intl.message(
      'Registered already? Login',
      name: 'label_registered_already',
      desc: '',
      args: [],
    );
  }

  /// `Photo Library`
  String get pick {
    return Intl.message(
      'Photo Library',
      name: 'pick',
      desc: '',
      args: [],
    );
  }

  /// `Take Photo`
  String get camera {
    return Intl.message(
      'Take Photo',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Phone verification`
  String get phone_verification {
    return Intl.message(
      'Phone verification',
      name: 'phone_verification',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your 5 digit pin sent on your registered mobile number`
  String get please_enter_ur4digit {
    return Intl.message(
      'Please enter your 5 digit pin sent on your registered mobile number',
      name: 'please_enter_ur4digit',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get label_profile {
    return Intl.message(
      'Profile',
      name: 'label_profile',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get label_services {
    return Intl.message(
      'Services',
      name: 'label_services',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get label_notifications {
    return Intl.message(
      'Notifications',
      name: 'label_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Chats`
  String get label_chat {
    return Intl.message(
      'Chats',
      name: 'label_chat',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get label_setting {
    return Intl.message(
      'Settings',
      name: 'label_setting',
      desc: '',
      args: [],
    );
  }

  /// `Skip this tour`
  String get label_skip_tour {
    return Intl.message(
      'Skip this tour',
      name: 'label_skip_tour',
      desc: '',
      args: [],
    );
  }

  /// `Start exploring`
  String get start_exploring {
    return Intl.message(
      'Start exploring',
      name: 'start_exploring',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get edit_profile_appbar_title {
    return Intl.message(
      'Edit profile',
      name: 'edit_profile_appbar_title',
      desc: '',
      args: [],
    );
  }

  /// `Change photo`
  String get edit_profile_change_photo {
    return Intl.message(
      'Change photo',
      name: 'edit_profile_change_photo',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get edit_profile {
    return Intl.message(
      'Edit profile',
      name: 'edit_profile',
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

  /// `Organization information`
  String get organization_information {
    return Intl.message(
      'Organization information',
      name: 'organization_information',
      desc: '',
      args: [],
    );
  }

  /// `Groups`
  String get groups {
    return Intl.message(
      'Groups',
      name: 'groups',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get view_all {
    return Intl.message(
      'View all',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get edit_profile_update_button {
    return Intl.message(
      'Update',
      name: 'edit_profile_update_button',
      desc: '',
      args: [],
    );
  }

  /// `test`
  String get test {
    return Intl.message(
      'test',
      name: 'test',
      desc: '',
      args: [],
    );
  }

  /// `You have not joined any groups yet`
  String get profile_no_join_group_yet {
    return Intl.message(
      'You have not joined any groups yet',
      name: 'profile_no_join_group_yet',
      desc: '',
      args: [],
    );
  }

  /// `Profile updated successfully`
  String get profile_updated_successfully {
    return Intl.message(
      'Profile updated successfully',
      name: 'profile_updated_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
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

  /// `Sign out`
  String get sign_out {
    return Intl.message(
      'Sign out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Version {version}`
  String version(Object version) {
    return Intl.message(
      'Version $version',
      name: 'version',
      desc: '',
      args: [version],
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

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Updates`
  String get updates {
    return Intl.message(
      'Updates',
      name: 'updates',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requests {
    return Intl.message(
      'Requests',
      name: 'requests',
      desc: '',
      args: [],
    );
  }

  /// `There is no notification`
  String get no_notification {
    return Intl.message(
      'There is no notification',
      name: 'no_notification',
      desc: '',
      args: [],
    );
  }

  /// `Read Successfully`
  String get read_successfully {
    return Intl.message(
      'Read Successfully',
      name: 'read_successfully',
      desc: '',
      args: [],
    );
  }

  /// `1 week ago`
  String get week_ago {
    return Intl.message(
      '1 week ago',
      name: 'week_ago',
      desc: '',
      args: [],
    );
  }

  /// `1 day ago`
  String get day_ago {
    return Intl.message(
      '1 day ago',
      name: 'day_ago',
      desc: '',
      args: [],
    );
  }

  /// `Translation`
  String get translation {
    return Intl.message(
      'Translation',
      name: 'translation',
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

  /// `File size must be less than 8MB`
  String get size_more_than_8mg {
    return Intl.message(
      'File size must be less than 8MB',
      name: 'size_more_than_8mg',
      desc: '',
      args: [],
    );
  }

  /// `Files larger than {MB} MB will not be added`
  String size_more_than_mg(Object MB) {
    return Intl.message(
      'Files larger than $MB MB will not be added',
      name: 'size_more_than_mg',
      desc: '',
      args: [MB],
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

  /// `Access is permanently denied. Please give the appropriate permission to complete the process`
  String get access_denied {
    return Intl.message(
      'Access is permanently denied. Please give the appropriate permission to complete the process',
      name: 'access_denied',
      desc: '',
      args: [],
    );
  }

  /// `Add entry`
  String get add_entity {
    return Intl.message(
      'Add entry',
      name: 'add_entity',
      desc: '',
      args: [],
    );
  }

  /// `View entity`
  String get view_entity {
    return Intl.message(
      'View entity',
      name: 'view_entity',
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

  /// `Add text`
  String get text_input_hint {
    return Intl.message(
      'Add text',
      name: 'text_input_hint',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get app_continue {
    return Intl.message(
      'Continue',
      name: 'app_continue',
      desc: '',
      args: [],
    );
  }

  /// `Privacy & Terms`
  String get privacy_terms {
    return Intl.message(
      'Privacy & Terms',
      name: 'privacy_terms',
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

  /// `Entity List`
  String get entity_list {
    return Intl.message(
      'Entity List',
      name: 'entity_list',
      desc: '',
      args: [],
    );
  }

  /// `{count} Entries`
  String entries_count(Object count) {
    return Intl.message(
      '$count Entries',
      name: 'entries_count',
      desc: '',
      args: [count],
    );
  }

  /// `Please enter valid range`
  String get invalid_range {
    return Intl.message(
      'Please enter valid range',
      name: 'invalid_range',
      desc: '',
      args: [],
    );
  }

  /// `Start Year`
  String get start_year {
    return Intl.message(
      'Start Year',
      name: 'start_year',
      desc: '',
      args: [],
    );
  }

  /// `End Year`
  String get end_year {
    return Intl.message(
      'End Year',
      name: 'end_year',
      desc: '',
      args: [],
    );
  }

  /// `is already exist`
  String get alreadyExist {
    return Intl.message(
      'is already exist',
      name: 'alreadyExist',
      desc: '',
      args: [],
    );
  }

  /// `Required Field`
  String get required_field {
    return Intl.message(
      'Required Field',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `field must be less than`
  String get lessThan {
    return Intl.message(
      'field must be less than',
      name: 'lessThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be greater than`
  String get greaterThan {
    return Intl.message(
      'field must be greater than',
      name: 'greaterThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be less than month number`
  String get monthLessThan {
    return Intl.message(
      'field must be less than month number',
      name: 'monthLessThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be greater than month`
  String get monthGreaterThan {
    return Intl.message(
      'field must be greater than month',
      name: 'monthGreaterThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be less than year`
  String get yearLessThan {
    return Intl.message(
      'field must be less than year',
      name: 'yearLessThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be greater than year`
  String get yearGreaterThan {
    return Intl.message(
      'field must be greater than year',
      name: 'yearGreaterThan',
      desc: '',
      args: [],
    );
  }

  /// `field must be before`
  String get fieldBefore {
    return Intl.message(
      'field must be before',
      name: 'fieldBefore',
      desc: '',
      args: [],
    );
  }

  /// `field must be after`
  String get fieldAfter {
    return Intl.message(
      'field must be after',
      name: 'fieldAfter',
      desc: '',
      args: [],
    );
  }

  /// `Step {step} of 2`
  String choose_lang_org_step(Object step) {
    return Intl.message(
      'Step $step of 2',
      name: 'choose_lang_org_step',
      desc: '',
      args: [step],
    );
  }

  /// `Organization URL`
  String get organization_url {
    return Intl.message(
      'Organization URL',
      name: 'organization_url',
      desc: '',
      args: [],
    );
  }

  /// `please enter your organization url you can contact admin for it`
  String get organization_url_subtitle {
    return Intl.message(
      'please enter your organization url you can contact admin for it',
      name: 'organization_url_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Example-organization.osos.com`
  String get organization_url_hint {
    return Intl.message(
      'Example-organization.osos.com',
      name: 'organization_url_hint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid organization url`
  String get organization_url_error {
    return Intl.message(
      'Please enter a valid organization url',
      name: 'organization_url_error',
      desc: '',
      args: [],
    );
  }

  /// `Hi {name}!`
  String welcome_user_title(Object name) {
    return Intl.message(
      'Hi $name!',
      name: 'welcome_user_title',
      desc: '',
      args: [name],
    );
  }

  /// `Welcome to {Env}!`
  String welcome_user_subtitle(Object Env) {
    return Intl.message(
      'Welcome to $Env!',
      name: 'welcome_user_subtitle',
      desc: '',
      args: [Env],
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

  /// `characters`
  String get characters {
    return Intl.message(
      'characters',
      name: 'characters',
      desc: '',
      args: [],
    );
  }

  /// `Coming Soon`
  String get comingSoon {
    return Intl.message(
      'Coming Soon',
      name: 'comingSoon',
      desc: '',
      args: [],
    );
  }

  /// `Well Done`
  String get wellDone {
    return Intl.message(
      'Well Done',
      name: 'wellDone',
      desc: '',
      args: [],
    );
  }

  /// `No Results`
  String get emptyRecords {
    return Intl.message(
      'No Results',
      name: 'emptyRecords',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Go Home`
  String get goHome {
    return Intl.message(
      'Go Home',
      name: 'goHome',
      desc: '',
      args: [],
    );
  }

  /// `No Results Found`
  String get noResult {
    return Intl.message(
      'No Results Found',
      name: 'noResult',
      desc: '',
      args: [],
    );
  }

  /// `Add New Entry`
  String get addNewEntry {
    return Intl.message(
      'Add New Entry',
      name: 'addNewEntry',
      desc: '',
      args: [],
    );
  }

  /// `Action`
  String get action {
    return Intl.message(
      'Action',
      name: 'action',
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

  /// `Action Required`
  String get actionRequired {
    return Intl.message(
      'Action Required',
      name: 'actionRequired',
      desc: '',
      args: [],
    );
  }

  /// `Error Happened`
  String get errorHappened {
    return Intl.message(
      'Error Happened',
      name: 'errorHappened',
      desc: '',
      args: [],
    );
  }

  /// `Oops Page Error`
  String get pageError {
    return Intl.message(
      'Oops Page Error',
      name: 'pageError',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get viewAll {
    return Intl.message(
      'View All',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Go To`
  String get goTo {
    return Intl.message(
      'Go To',
      name: 'goTo',
      desc: '',
      args: [],
    );
  }

  /// `All Views`
  String get allViews {
    return Intl.message(
      'All Views',
      name: 'allViews',
      desc: '',
      args: [],
    );
  }

  /// `Last Modified`
  String get lastModified {
    return Intl.message(
      'Last Modified',
      name: 'lastModified',
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

  /// `Dark mode`
  String get dark_mode {
    return Intl.message(
      'Dark mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Light mode`
  String get light_mode {
    return Intl.message(
      'Light mode',
      name: 'light_mode',
      desc: '',
      args: [],
    );
  }

  /// `Font Size`
  String get font_size {
    return Intl.message(
      'Font Size',
      name: 'font_size',
      desc: '',
      args: [],
    );
  }

  /// `Page Zoom`
  String get page_zoom {
    return Intl.message(
      'Page Zoom',
      name: 'page_zoom',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Brightness`
  String get brightness {
    return Intl.message(
      'Brightness',
      name: 'brightness',
      desc: '',
      args: [],
    );
  }

  /// `Need Help?`
  String get need_help {
    return Intl.message(
      'Need Help?',
      name: 'need_help',
      desc: '',
      args: [],
    );
  }

  /// `Add More`
  String get addMore {
    return Intl.message(
      'Add More',
      name: 'addMore',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultt {
    return Intl.message(
      'Default',
      name: 'defaultt',
      desc: '',
      args: [],
    );
  }

  /// `items`
  String get items {
    return Intl.message(
      'items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `Please add at least`
  String get atLeast {
    return Intl.message(
      'Please add at least',
      name: 'atLeast',
      desc: '',
      args: [],
    );
  }

  /// `Please add at most `
  String get atMost {
    return Intl.message(
      'Please add at most ',
      name: 'atMost',
      desc: '',
      args: [],
    );
  }

  /// `Items should be uniques`
  String get itemsShouldUnique {
    return Intl.message(
      'Items should be uniques',
      name: 'itemsShouldUnique',
      desc: '',
      args: [],
    );
  }

  /// `Not Exist`
  String get notExist {
    return Intl.message(
      'Not Exist',
      name: 'notExist',
      desc: '',
      args: [],
    );
  }

  /// `Enter Number`
  String get enterNumber {
    return Intl.message(
      'Enter Number',
      name: 'enterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Entries`
  String get entries {
    return Intl.message(
      'Entries',
      name: 'entries',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Archived`
  String get archived {
    return Intl.message(
      'Archived',
      name: 'archived',
      desc: '',
      args: [],
    );
  }

  /// `Unarchive`
  String get unarchived {
    return Intl.message(
      'Unarchive',
      name: 'unarchived',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
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

  /// `Archive`
  String get archive {
    return Intl.message(
      'Archive',
      name: 'archive',
      desc: '',
      args: [],
    );
  }

  /// `Table`
  String get table {
    return Intl.message(
      'Table',
      name: 'table',
      desc: '',
      args: [],
    );
  }

  /// `Kanban`
  String get kanban {
    return Intl.message(
      'Kanban',
      name: 'kanban',
      desc: '',
      args: [],
    );
  }

  /// `Badge`
  String get badge {
    return Intl.message(
      'Badge',
      name: 'badge',
      desc: '',
      args: [],
    );
  }

  /// `Calender`
  String get calender {
    return Intl.message(
      'Calender',
      name: 'calender',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get normal {
    return Intl.message(
      'Normal',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `Back To Step`
  String get returnToStep {
    return Intl.message(
      'Back To Step',
      name: 'returnToStep',
      desc: '',
      args: [],
    );
  }

  /// `Jump to Step`
  String get moveToStep {
    return Intl.message(
      'Jump to Step',
      name: 'moveToStep',
      desc: '',
      args: [],
    );
  }

  /// `Rest Workflow Step`
  String get resetWorkflow {
    return Intl.message(
      'Rest Workflow Step',
      name: 'resetWorkflow',
      desc: '',
      args: [],
    );
  }

  /// `End Workflow Step`
  String get endWorkflow {
    return Intl.message(
      'End Workflow Step',
      name: 'endWorkflow',
      desc: '',
      args: [],
    );
  }

  /// `Add Adhoc Step`
  String get adHoc {
    return Intl.message(
      'Add Adhoc Step',
      name: 'adHoc',
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

  /// `{number} Selected Records`
  String selectedRecords(Object number) {
    return Intl.message(
      '$number Selected Records',
      name: 'selectedRecords',
      desc: '',
      args: [number],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message(
      'Selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Add ad hoc step`
  String get addAdHocStep {
    return Intl.message(
      'Add ad hoc step',
      name: 'addAdHocStep',
      desc: '',
      args: [],
    );
  }

  /// `Additional Approval`
  String get additionalApproval {
    return Intl.message(
      'Additional Approval',
      name: 'additionalApproval',
      desc: '',
      args: [],
    );
  }

  /// `Additional Information`
  String get additionalInformation {
    return Intl.message(
      'Additional Information',
      name: 'additionalInformation',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Group`
  String get group {
    return Intl.message(
      'Group',
      name: 'group',
      desc: '',
      args: [],
    );
  }

  /// `{env, select, yasuat{Collection} yasprod{Collection} other{Collection}}`
  String dataCollection(Object env) {
    return Intl.select(
      env,
      {
        'yasuat': 'Collection',
        'yasprod': 'Collection',
        'other': 'Collection',
      },
      name: 'dataCollection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `Organization Unit`
  String get organizationUnit {
    return Intl.message(
      'Organization Unit',
      name: 'organizationUnit',
      desc: '',
      args: [],
    );
  }

  /// `Organization`
  String get organizationUnitName {
    return Intl.message(
      'Organization',
      name: 'organizationUnitName',
      desc: '',
      args: [],
    );
  }

  /// `Fixed`
  String get fixed {
    return Intl.message(
      'Fixed',
      name: 'fixed',
      desc: '',
      args: [],
    );
  }

  /// `dynamic`
  String get dynamic {
    return Intl.message(
      'dynamic',
      name: 'dynamic',
      desc: '',
      args: [],
    );
  }

  /// `relative`
  String get relative {
    return Intl.message(
      'relative',
      name: 'relative',
      desc: '',
      args: [],
    );
  }

  /// `Step Owner Source Type`
  String get stepOwnerSourceType {
    return Intl.message(
      'Step Owner Source Type',
      name: 'stepOwnerSourceType',
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

  /// `Step Type`
  String get stepType {
    return Intl.message(
      'Step Type',
      name: 'stepType',
      desc: '',
      args: [],
    );
  }

  /// `Step Owner`
  String get stepOwner {
    return Intl.message(
      'Step Owner',
      name: 'stepOwner',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Single User`
  String get singleUser {
    return Intl.message(
      'Single User',
      name: 'singleUser',
      desc: '',
      args: [],
    );
  }

  /// `All Users`
  String get allUsers {
    return Intl.message(
      'All Users',
      name: 'allUsers',
      desc: '',
      args: [],
    );
  }

  /// `Group Name`
  String get groupName {
    return Intl.message(
      'Group Name',
      name: 'groupName',
      desc: '',
      args: [],
    );
  }

  /// `Select User Type`
  String get selectUserType {
    return Intl.message(
      'Select User Type',
      name: 'selectUserType',
      desc: '',
      args: [],
    );
  }

  /// `First One`
  String get firstOne {
    return Intl.message(
      'First One',
      name: 'firstOne',
      desc: '',
      args: [],
    );
  }

  /// `Take Ownership`
  String get takeOwnerShip {
    return Intl.message(
      'Take Ownership',
      name: 'takeOwnerShip',
      desc: '',
      args: [],
    );
  }

  /// `Selection Type`
  String get selectionType {
    return Intl.message(
      'Selection Type',
      name: 'selectionType',
      desc: '',
      args: [],
    );
  }

  /// `Category Not Set`
  String get categoryNotSet {
    return Intl.message(
      'Category Not Set',
      name: 'categoryNotSet',
      desc: '',
      args: [],
    );
  }

  /// `Executed successfully`
  String get executedSuccessfully {
    return Intl.message(
      'Executed successfully',
      name: 'executedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Add comment`
  String get leaveComment {
    return Intl.message(
      'Add comment',
      name: 'leaveComment',
      desc: '',
      args: [],
    );
  }

  /// `By`
  String get by {
    return Intl.message(
      'By',
      name: 'by',
      desc: '',
      args: [],
    );
  }

  /// `Last edit By`
  String get lastEditBy {
    return Intl.message(
      'Last edit By',
      name: 'lastEditBy',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get week {
    return Intl.message(
      'Week',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get month {
    return Intl.message(
      'Month',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `There is no entries`
  String get noEntries {
    return Intl.message(
      'There is no entries',
      name: 'noEntries',
      desc: '',
      args: [],
    );
  }

  /// `Reassign Owner`
  String get reassignOwner {
    return Intl.message(
      'Reassign Owner',
      name: 'reassignOwner',
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

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Timeline`
  String get timeline {
    return Intl.message(
      'Timeline',
      name: 'timeline',
      desc: '',
      args: [],
    );
  }

  /// `Less than {time}`
  String lessThanTime(Object time) {
    return Intl.message(
      'Less than $time',
      name: 'lessThanTime',
      desc: '',
      args: [time],
    );
  }

  /// ` to start`
  String get toStart {
    return Intl.message(
      ' to start',
      name: 'toStart',
      desc: '',
      args: [],
    );
  }

  /// `From {time}`
  String from_time(Object time) {
    return Intl.message(
      'From $time',
      name: 'from_time',
      desc: '',
      args: [time],
    );
  }

  /// ` to {time}`
  String to_time(Object time) {
    return Intl.message(
      ' to $time',
      name: 'to_time',
      desc: '',
      args: [time],
    );
  }

  /// `The event is ended`
  String get eventIsEnded {
    return Intl.message(
      'The event is ended',
      name: 'eventIsEnded',
      desc: '',
      args: [],
    );
  }

  /// `Happening Now`
  String get happeningNow {
    return Intl.message(
      'Happening Now',
      name: 'happeningNow',
      desc: '',
      args: [],
    );
  }

  /// `Started {time}`
  String startedFrom(Object time) {
    return Intl.message(
      'Started $time',
      name: 'startedFrom',
      desc: '',
      args: [time],
    );
  }

  /// `Finished {time}`
  String finished(Object time) {
    return Intl.message(
      'Finished $time',
      name: 'finished',
      desc: '',
      args: [time],
    );
  }

  /// `Publish`
  String get publish {
    return Intl.message(
      'Publish',
      name: 'publish',
      desc: '',
      args: [],
    );
  }

  /// `Unpublish`
  String get un_publish {
    return Intl.message(
      'Unpublish',
      name: 'un_publish',
      desc: '',
      args: [],
    );
  }

  /// `Created {date} ago`
  String created_at_relative(Object date) {
    return Intl.message(
      'Created $date ago',
      name: 'created_at_relative',
      desc: '',
      args: [date],
    );
  }

  /// `Created in {date}`
  String created_at(Object date) {
    return Intl.message(
      'Created in $date',
      name: 'created_at',
      desc: '',
      args: [date],
    );
  }

  /// `Published {date} ago`
  String publish_at_relative(Object date) {
    return Intl.message(
      'Published $date ago',
      name: 'publish_at_relative',
      desc: '',
      args: [date],
    );
  }

  /// `Published in {date}`
  String publish_at(Object date) {
    return Intl.message(
      'Published in $date',
      name: 'publish_at',
      desc: '',
      args: [date],
    );
  }

  /// `To be published after {date}`
  String publish_in_relative(Object date) {
    return Intl.message(
      'To be published after $date',
      name: 'publish_in_relative',
      desc: '',
      args: [date],
    );
  }

  /// `To be published in {date}`
  String publish_in(Object date) {
    return Intl.message(
      'To be published in $date',
      name: 'publish_in',
      desc: '',
      args: [date],
    );
  }

  /// `To be published between {date} to {date2}`
  String publish_between_in(Object date, Object date2) {
    return Intl.message(
      'To be published between $date to $date2',
      name: 'publish_between_in',
      desc: '',
      args: [date, date2],
    );
  }

  /// `To be published after {date} to {date2}`
  String publish_between_in_relative(Object date, Object date2) {
    return Intl.message(
      'To be published after $date to $date2',
      name: 'publish_between_in_relative',
      desc: '',
      args: [date, date2],
    );
  }

  /// `Unpublished {date} ago`
  String un_publish_at_relative(Object date) {
    return Intl.message(
      'Unpublished $date ago',
      name: 'un_publish_at_relative',
      desc: '',
      args: [date],
    );
  }

  /// `Unpublished in {date}`
  String un_publish_at(Object date) {
    return Intl.message(
      'Unpublished in $date',
      name: 'un_publish_at',
      desc: '',
      args: [date],
    );
  }

  /// `To be Unpublish after {date}`
  String un_publish_in_relative(Object date) {
    return Intl.message(
      'To be Unpublish after $date',
      name: 'un_publish_in_relative',
      desc: '',
      args: [date],
    );
  }

  /// `To be Unpublish in {date}`
  String un_publish_in(Object date) {
    return Intl.message(
      'To be Unpublish in $date',
      name: 'un_publish_in',
      desc: '',
      args: [date],
    );
  }

  /// `Continue as Guest`
  String get continueAsGuest {
    return Intl.message(
      'Continue as Guest',
      name: 'continueAsGuest',
      desc: '',
      args: [],
    );
  }

  /// `Guest`
  String get guestUser {
    return Intl.message(
      'Guest',
      name: 'guestUser',
      desc: '',
      args: [],
    );
  }

  /// `Empty List`
  String get emptyList {
    return Intl.message(
      'Empty List',
      name: 'emptyList',
      desc: '',
      args: [],
    );
  }

  /// `You can't publish/unpublish post by scheduled date.`
  String get error_publish_unpublish_post_schedule {
    return Intl.message(
      'You can\'t publish/unpublish post by scheduled date.',
      name: 'error_publish_unpublish_post_schedule',
      desc: '',
      args: [],
    );
  }

  /// `to end`
  String get to_end {
    return Intl.message(
      'to end',
      name: 'to_end',
      desc: '',
      args: [],
    );
  }

  /// `Discussions`
  String get discussions {
    return Intl.message(
      'Discussions',
      name: 'discussions',
      desc: '',
      args: [],
    );
  }

  /// `Type your messages ...`
  String get write_your_comment {
    return Intl.message(
      'Type your messages ...',
      name: 'write_your_comment',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `No comments found`
  String get no_comments_found {
    return Intl.message(
      'No comments found',
      name: 'no_comments_found',
      desc: '',
      args: [],
    );
  }

  /// `File extention not supported`
  String get file_extention_not_supported {
    return Intl.message(
      'File extention not supported',
      name: 'file_extention_not_supported',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{{count} Entries} one{{count} Entry} other{{count} Entries}}`
  String entry_count(num count) {
    return Intl.plural(
      count,
      zero: '$count Entries',
      one: '$count Entry',
      other: '$count Entries',
      name: 'entry_count',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero{ } one{{count} Item selected } other{{count} Items selected}}`
  String selected_item_count(num count) {
    return Intl.plural(
      count,
      zero: ' ',
      one: '$count Item selected ',
      other: '$count Items selected',
      name: 'selected_item_count',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, zero{ } one{Are you sure you want to archive the entry?} other{Are you sure you want to archive the entries}}`
  String are_you_sure_you_want_to_archive_entry(num count) {
    return Intl.plural(
      count,
      zero: ' ',
      one: 'Are you sure you want to archive the entry?',
      other: 'Are you sure you want to archive the entries',
      name: 'are_you_sure_you_want_to_archive_entry',
      desc: '',
      args: [count],
    );
  }

  /// `{name} selected`
  String selected_entry_name(Object name) {
    return Intl.message(
      '$name selected',
      name: 'selected_entry_name',
      desc: '',
      args: [name],
    );
  }

  /// `All items selected`
  String get all_items_selected {
    return Intl.message(
      'All items selected',
      name: 'all_items_selected',
      desc: '',
      args: [],
    );
  }

  /// `Entry`
  String get entry {
    return Intl.message(
      'Entry',
      name: 'entry',
      desc: '',
      args: [],
    );
  }

  /// `File downloaded successfully`
  String get file_downloaded_successfully {
    return Intl.message(
      'File downloaded successfully',
      name: 'file_downloaded_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Display Options`
  String get display_option {
    return Intl.message(
      'Display Options',
      name: 'display_option',
      desc: '',
      args: [],
    );
  }

  /// `View Type`
  String get view_type {
    return Intl.message(
      'View Type',
      name: 'view_type',
      desc: '',
      args: [],
    );
  }

  /// `List`
  String get list {
    return Intl.message(
      'List',
      name: 'list',
      desc: '',
      args: [],
    );
  }

  /// `Applied Sort`
  String get applied_sort {
    return Intl.message(
      'Applied Sort',
      name: 'applied_sort',
      desc: '',
      args: [],
    );
  }

  /// `Sort Direction`
  String get sort_direction {
    return Intl.message(
      'Sort Direction',
      name: 'sort_direction',
      desc: '',
      args: [],
    );
  }

  /// `Ascending`
  String get ascending {
    return Intl.message(
      'Ascending',
      name: 'ascending',
      desc: '',
      args: [],
    );
  }

  /// `Descending`
  String get descending {
    return Intl.message(
      'Descending',
      name: 'descending',
      desc: '',
      args: [],
    );
  }

  /// `Sort By`
  String get sort_by {
    return Intl.message(
      'Sort By',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `Asc`
  String get asc {
    return Intl.message(
      'Asc',
      name: 'asc',
      desc: '',
      args: [],
    );
  }

  /// `Desc`
  String get desc {
    return Intl.message(
      'Desc',
      name: 'desc',
      desc: '',
      args: [],
    );
  }

  /// `event`
  String get event {
    return Intl.message(
      'event',
      name: 'event',
      desc: '',
      args: [],
    );
  }

  /// `All conditions are met`
  String get all_condition_met {
    return Intl.message(
      'All conditions are met',
      name: 'all_condition_met',
      desc: '',
      args: [],
    );
  }

  /// `Some conditions are met`
  String get some_condition_met {
    return Intl.message(
      'Some conditions are met',
      name: 'some_condition_met',
      desc: '',
      args: [],
    );
  }

  /// `Entry Fields`
  String get entry_fields {
    return Intl.message(
      'Entry Fields',
      name: 'entry_fields',
      desc: '',
      args: [],
    );
  }

  /// `Entry Metadata`
  String get entry_metadata {
    return Intl.message(
      'Entry Metadata',
      name: 'entry_metadata',
      desc: '',
      args: [],
    );
  }

  /// `Add group`
  String get add_group {
    return Intl.message(
      'Add group',
      name: 'add_group',
      desc: '',
      args: [],
    );
  }

  /// `Created by`
  String get created_by {
    return Intl.message(
      'Created by',
      name: 'created_by',
      desc: '',
      args: [],
    );
  }

  /// `Created at`
  String get created_at_meta {
    return Intl.message(
      'Created at',
      name: 'created_at_meta',
      desc: '',
      args: [],
    );
  }

  /// `Updated by`
  String get updated_by {
    return Intl.message(
      'Updated by',
      name: 'updated_by',
      desc: '',
      args: [],
    );
  }

  /// `Updated at`
  String get updated_at {
    return Intl.message(
      'Updated at',
      name: 'updated_at',
      desc: '',
      args: [],
    );
  }

  /// `Add Condition or Group`
  String get add_condition_or_group {
    return Intl.message(
      'Add Condition or Group',
      name: 'add_condition_or_group',
      desc: '',
      args: [],
    );
  }

  /// `Add Condition`
  String get add_condition {
    return Intl.message(
      'Add Condition',
      name: 'add_condition',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Group`
  String get group_of_conditions {
    return Intl.message(
      'Group',
      name: 'group_of_conditions',
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

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Operator`
  String get operator {
    return Intl.message(
      'Operator',
      name: 'operator',
      desc: '',
      args: [],
    );
  }

  /// `Source`
  String get source {
    return Intl.message(
      'Source',
      name: 'source',
      desc: '',
      args: [],
    );
  }

  /// `Pointer`
  String get pointer {
    return Intl.message(
      'Pointer',
      name: 'pointer',
      desc: '',
      args: [],
    );
  }

  /// `Value`
  String get value {
    return Intl.message(
      'Value',
      name: 'value',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Comment`
  String get comment {
    return Intl.message(
      'Comment',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `Equal`
  String get equal {
    return Intl.message(
      'Equal',
      name: 'equal',
      desc: '',
      args: [],
    );
  }

  /// `Not equal`
  String get not_equal {
    return Intl.message(
      'Not equal',
      name: 'not_equal',
      desc: '',
      args: [],
    );
  }

  /// `Contains`
  String get contains {
    return Intl.message(
      'Contains',
      name: 'contains',
      desc: '',
      args: [],
    );
  }

  /// `Does not contain`
  String get does_not_contain {
    return Intl.message(
      'Does not contain',
      name: 'does_not_contain',
      desc: '',
      args: [],
    );
  }

  /// `Starts with`
  String get starts_with {
    return Intl.message(
      'Starts with',
      name: 'starts_with',
      desc: '',
      args: [],
    );
  }

  /// `Does not start with`
  String get does_not_start_with {
    return Intl.message(
      'Does not start with',
      name: 'does_not_start_with',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get like {
    return Intl.message(
      'Like',
      name: 'like',
      desc: '',
      args: [],
    );
  }

  /// `Is not like`
  String get is_noy_like {
    return Intl.message(
      'Is not like',
      name: 'is_noy_like',
      desc: '',
      args: [],
    );
  }

  /// `Less than`
  String get less_than {
    return Intl.message(
      'Less than',
      name: 'less_than',
      desc: '',
      args: [],
    );
  }

  /// `Less than or equal`
  String get less_than_or_equal {
    return Intl.message(
      'Less than or equal',
      name: 'less_than_or_equal',
      desc: '',
      args: [],
    );
  }

  /// `Greater than`
  String get greater_than {
    return Intl.message(
      'Greater than',
      name: 'greater_than',
      desc: '',
      args: [],
    );
  }

  /// `Greater than or equal`
  String get greater_than_or_equal {
    return Intl.message(
      'Greater than or equal',
      name: 'greater_than_or_equal',
      desc: '',
      args: [],
    );
  }

  /// `In`
  String get op_in {
    return Intl.message(
      'In',
      name: 'op_in',
      desc: '',
      args: [],
    );
  }

  /// `Not in`
  String get op_not_in {
    return Intl.message(
      'Not in',
      name: 'op_not_in',
      desc: '',
      args: [],
    );
  }

  /// `What you want to add`
  String get what_you_want_to_add {
    return Intl.message(
      'What you want to add',
      name: 'what_you_want_to_add',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{ } one{{count} Query} other{{count} Queries}}`
  String query(num count) {
    return Intl.plural(
      count,
      zero: ' ',
      one: '$count Query',
      other: '$count Queries',
      name: 'query',
      desc: '',
      args: [count],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Service Catalog`
  String get serviceCatalog {
    return Intl.message(
      'Service Catalog',
      name: 'serviceCatalog',
      desc: '',
      args: [],
    );
  }

  /// `Inbox`
  String get inbox {
    return Intl.message(
      'Inbox',
      name: 'inbox',
      desc: '',
      args: [],
    );
  }

  /// `Not Authorized`
  String get notAuthorized {
    return Intl.message(
      'Not Authorized',
      name: 'notAuthorized',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, you don't have permission to view this record. Please contact your system administrator.`
  String get notHavePermissonToView {
    return Intl.message(
      'Sorry, you don\'t have permission to view this record. Please contact your system administrator.',
      name: 'notHavePermissonToView',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Field`
  String get repeatField {
    return Intl.message(
      'Repeat Field',
      name: 'repeatField',
      desc: '',
      args: [],
    );
  }

  /// `Reassign step to`
  String get reassignStepTo {
    return Intl.message(
      'Reassign step to',
      name: 'reassignStepTo',
      desc: '',
      args: [],
    );
  }

  /// `Me`
  String get me {
    return Intl.message(
      'Me',
      name: 'me',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get now {
    return Intl.message(
      'Now',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `Start of day`
  String get start_of_day {
    return Intl.message(
      'Start of day',
      name: 'start_of_day',
      desc: '',
      args: [],
    );
  }

  /// `Start of week`
  String get start_of_week {
    return Intl.message(
      'Start of week',
      name: 'start_of_week',
      desc: '',
      args: [],
    );
  }

  /// `Start of month`
  String get start_of_month {
    return Intl.message(
      'Start of month',
      name: 'start_of_month',
      desc: '',
      args: [],
    );
  }

  /// `Start of year`
  String get start_of_year {
    return Intl.message(
      'Start of year',
      name: 'start_of_year',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Please select first value`
  String get isRangeFirstValueError {
    return Intl.message(
      'Please select first value',
      name: 'isRangeFirstValueError',
      desc: '',
      args: [],
    );
  }

  /// `Please select second value`
  String get isRangeSecondValueError {
    return Intl.message(
      'Please select second value',
      name: 'isRangeSecondValueError',
      desc: '',
      args: [],
    );
  }

  /// `No Main Title`
  String get relation_no_main_title {
    return Intl.message(
      'No Main Title',
      name: 'relation_no_main_title',
      desc: '',
      args: [],
    );
  }

  /// `Pick Icon`
  String get pickIcon {
    return Intl.message(
      'Pick Icon',
      name: 'pickIcon',
      desc: '',
      args: [],
    );
  }

  /// `Tap to begin upload your files`
  String get tapToUpload {
    return Intl.message(
      'Tap to begin upload your files',
      name: 'tapToUpload',
      desc: '',
      args: [],
    );
  }

  /// `Browse`
  String get browse {
    return Intl.message(
      'Browse',
      name: 'browse',
      desc: '',
      args: [],
    );
  }

  /// `Enter`
  String get enter {
    return Intl.message(
      'Enter',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, zero{ } one{{count} filter} other{{count} filters}}`
  String filter_with_count(num count) {
    return Intl.plural(
      count,
      zero: ' ',
      one: '$count filter',
      other: '$count filters',
      name: 'filter_with_count',
      desc: '',
      args: [count],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select_entry {
    return Intl.message(
      'Select',
      name: 'select_entry',
      desc: '',
      args: [],
    );
  }

  /// `Attach Video`
  String get attachVideo {
    return Intl.message(
      'Attach Video',
      name: 'attachVideo',
      desc: '',
      args: [],
    );
  }

  /// `Attach File`
  String get attachFile {
    return Intl.message(
      'Attach File',
      name: 'attachFile',
      desc: '',
      args: [],
    );
  }

  /// `Attach Image`
  String get attachImage {
    return Intl.message(
      'Attach Image',
      name: 'attachImage',
      desc: '',
      args: [],
    );
  }

  /// `Attach Document`
  String get attachDoc {
    return Intl.message(
      'Attach Document',
      name: 'attachDoc',
      desc: '',
      args: [],
    );
  }

  /// `Ability to change user`
  String get abilityToChange {
    return Intl.message(
      'Ability to change user',
      name: 'abilityToChange',
      desc: '',
      args: [],
    );
  }

  /// `Please check phone number`
  String get noValidPhone {
    return Intl.message(
      'Please check phone number',
      name: 'noValidPhone',
      desc: '',
      args: [],
    );
  }

  /// `Draft`
  String get draft {
    return Intl.message(
      'Draft',
      name: 'draft',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming`
  String get event_upcoming {
    return Intl.message(
      'Upcoming',
      name: 'event_upcoming',
      desc: '',
      args: [],
    );
  }

  /// `OnGoing`
  String get event_ongoing {
    return Intl.message(
      'OnGoing',
      name: 'event_ongoing',
      desc: '',
      args: [],
    );
  }

  /// `Ended`
  String get event_ended {
    return Intl.message(
      'Ended',
      name: 'event_ended',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get your_location {
    return Intl.message(
      'Location',
      name: 'your_location',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are denied`
  String get location_permissions_are_denied {
    return Intl.message(
      'Location permissions are denied',
      name: 'location_permissions_are_denied',
      desc: '',
      args: [],
    );
  }

  /// `Location permissions are permanently denied. Please grant permission to continue`
  String get location_permissions_are_denied_forever {
    return Intl.message(
      'Location permissions are permanently denied. Please grant permission to continue',
      name: 'location_permissions_are_denied_forever',
      desc: '',
      args: [],
    );
  }

  /// `Grant`
  String get grant {
    return Intl.message(
      'Grant',
      name: 'grant',
      desc: '',
      args: [],
    );
  }

  /// `Field Name`
  String get fieldName {
    return Intl.message(
      'Field Name',
      name: 'fieldName',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Add New Record`
  String get addNewRecord {
    return Intl.message(
      'Add New Record',
      name: 'addNewRecord',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the following fields`
  String get fillFilterFields {
    return Intl.message(
      'Please fill in the following fields',
      name: 'fillFilterFields',
      desc: '',
      args: [],
    );
  }

  /// `to display the matching Entries`
  String get displayMatching {
    return Intl.message(
      'to display the matching Entries',
      name: 'displayMatching',
      desc: '',
      args: [],
    );
  }

  /// `Load More`
  String get loadmore {
    return Intl.message(
      'Load More',
      name: 'loadmore',
      desc: '',
      args: [],
    );
  }

  /// `History Steps`
  String get historySteps {
    return Intl.message(
      'History Steps',
      name: 'historySteps',
      desc: '',
      args: [],
    );
  }

  /// `Workflow`
  String get workflow {
    return Intl.message(
      'Workflow',
      name: 'workflow',
      desc: '',
      args: [],
    );
  }

  /// `Value Added`
  String get valueAdded {
    return Intl.message(
      'Value Added',
      name: 'valueAdded',
      desc: '',
      args: [],
    );
  }

  /// `Value Removed`
  String get valueRemoved {
    return Intl.message(
      'Value Removed',
      name: 'valueRemoved',
      desc: '',
      args: [],
    );
  }

  /// `Value Changed`
  String get valueChanged {
    return Intl.message(
      'Value Changed',
      name: 'valueChanged',
      desc: '',
      args: [],
    );
  }

  /// `Tree`
  String get tree {
    return Intl.message(
      'Tree',
      name: 'tree',
      desc: '',
      args: [],
    );
  }

  /// `Visit view`
  String get visitView {
    return Intl.message(
      'Visit view',
      name: 'visitView',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one{1 View} other{{count} Views}}`
  String views(num count) {
    return Intl.plural(
      count,
      one: '1 View',
      other: '$count Views',
      name: 'views',
      desc: '',
      args: [count],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Obsolete`
  String get obsolete {
    return Intl.message(
      'Obsolete',
      name: 'obsolete',
      desc: '',
      args: [],
    );
  }

  /// `UnObsolete`
  String get un_obsolete {
    return Intl.message(
      'UnObsolete',
      name: 'un_obsolete',
      desc: '',
      args: [],
    );
  }

  /// `Like`
  String get reaction_like {
    return Intl.message(
      'Like',
      name: 'reaction_like',
      desc: '',
      args: [],
    );
  }

  /// `Love`
  String get reaction_love {
    return Intl.message(
      'Love',
      name: 'reaction_love',
      desc: '',
      args: [],
    );
  }

  /// `Wow`
  String get reaction_wow {
    return Intl.message(
      'Wow',
      name: 'reaction_wow',
      desc: '',
      args: [],
    );
  }

  /// `Angry`
  String get reaction_angry {
    return Intl.message(
      'Angry',
      name: 'reaction_angry',
      desc: '',
      args: [],
    );
  }

  /// `Haha`
  String get reaction_funny {
    return Intl.message(
      'Haha',
      name: 'reaction_funny',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one{You and 1 other} other{You and {count} others}}`
  String reaction_likes(num count) {
    return Intl.plural(
      count,
      one: 'You and 1 other',
      other: 'You and $count others',
      name: 'reaction_likes',
      desc: '',
      args: [count],
    );
  }

  /// `Comment`
  String get reaction_comment {
    return Intl.message(
      'Comment',
      name: 'reaction_comment',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one{1 Comment} other{{count} Comments}}`
  String reaction_comments(num count) {
    return Intl.plural(
      count,
      one: '1 Comment',
      other: '$count Comments',
      name: 'reaction_comments',
      desc: '',
      args: [count],
    );
  }

  /// `New Update Available`
  String get new_update_available {
    return Intl.message(
      'New Update Available',
      name: 'new_update_available',
      desc: '',
      args: [],
    );
  }

  /// `A new version {versionNumber} of {appName} app is now available!`
  String new_update_available_desc(Object versionNumber, Object appName) {
    return Intl.message(
      'A new version $versionNumber of $appName app is now available!',
      name: 'new_update_available_desc',
      desc: '',
      args: [versionNumber, appName],
    );
  }

  /// `Update Required`
  String get update_required {
    return Intl.message(
      'Update Required',
      name: 'update_required',
      desc: '',
      args: [],
    );
  }

  /// `Your app is out of date.\nPlease update to the latest version`
  String get update_required_desc {
    return Intl.message(
      'Your app is out of date.\nPlease update to the latest version',
      name: 'update_required_desc',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Update to {appVersion}`
  String update_to(Object appVersion) {
    return Intl.message(
      'Update to $appVersion',
      name: 'update_to',
      desc: '',
      args: [appVersion],
    );
  }

  /// `App Version {appVersion}`
  String app_version(Object appVersion) {
    return Intl.message(
      'App Version $appVersion',
      name: 'app_version',
      desc: '',
      args: [appVersion],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
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

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `all`
  String get all_reaction {
    return Intl.message(
      'all',
      name: 'all_reaction',
      desc: '',
      args: [],
    );
  }

  /// `Type your comment ...`
  String get type_ur_comment {
    return Intl.message(
      'Type your comment ...',
      name: 'type_ur_comment',
      desc: '',
      args: [],
    );
  }

  /// `Our Mission`
  String get our_mission {
    return Intl.message(
      'Our Mission',
      name: 'our_mission',
      desc: '',
      args: [],
    );
  }

  /// `Our Vision`
  String get our_vision {
    return Intl.message(
      'Our Vision',
      name: 'our_vision',
      desc: '',
      args: [],
    );
  }

  /// `Our Values`
  String get our_values {
    return Intl.message(
      'Our Values',
      name: 'our_values',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about_org {
    return Intl.message(
      'About',
      name: 'about_org',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get read_more {
    return Intl.message(
      'Read More',
      name: 'read_more',
      desc: '',
      args: [],
    );
  }

  /// `Read Less`
  String get read_less {
    return Intl.message(
      'Read Less',
      name: 'read_less',
      desc: '',
      args: [],
    );
  }

  /// `Charts`
  String get charts {
    return Intl.message(
      'Charts',
      name: 'charts',
      desc: '',
      args: [],
    );
  }

  /// `Quick Services`
  String get quickServices {
    return Intl.message(
      'Quick Services',
      name: 'quickServices',
      desc: '',
      args: [],
    );
  }

  /// `Quick Links`
  String get quickLinks {
    return Intl.message(
      'Quick Links',
      name: 'quickLinks',
      desc: '',
      args: [],
    );
  }

  /// `Our Gallery`
  String get our_gallery {
    return Intl.message(
      'Our Gallery',
      name: 'our_gallery',
      desc: '',
      args: [],
    );
  }

  /// `See More`
  String get see_more {
    return Intl.message(
      'See More',
      name: 'see_more',
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

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Success Story`
  String get success_story {
    return Intl.message(
      'Success Story',
      name: 'success_story',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get events {
    return Intl.message(
      'Events',
      name: 'events',
      desc: '',
      args: [],
    );
  }

  /// `Announcements`
  String get announcements {
    return Intl.message(
      'Announcements',
      name: 'announcements',
      desc: '',
      args: [],
    );
  }

  /// `Who We Are`
  String get who_we_are {
    return Intl.message(
      'Who We Are',
      name: 'who_we_are',
      desc: '',
      args: [],
    );
  }

  /// `No discussions yet`
  String get no_discussions {
    return Intl.message(
      'No discussions yet',
      name: 'no_discussions',
      desc: '',
      args: [],
    );
  }

  /// `Be the first to add a discussion`
  String get be_the_first_add_discussion {
    return Intl.message(
      'Be the first to add a discussion',
      name: 'be_the_first_add_discussion',
      desc: '',
      args: [],
    );
  }

  /// `No comments yet`
  String get no_comment {
    return Intl.message(
      'No comments yet',
      name: 'no_comment',
      desc: '',
      args: [],
    );
  }

  /// `Be the first to add a comment`
  String get be_the_first_add_comment {
    return Intl.message(
      'Be the first to add a comment',
      name: 'be_the_first_add_comment',
      desc: '',
      args: [],
    );
  }

  /// `No result found`
  String get no_result_found {
    return Intl.message(
      'No result found',
      name: 'no_result_found',
      desc: '',
      args: [],
    );
  }

  /// `Stay in touch with everyone`
  String get stay_with_all_on_touch {
    return Intl.message(
      'Stay in touch with everyone',
      name: 'stay_with_all_on_touch',
      desc: '',
      args: [],
    );
  }

  /// `Counters`
  String get counters {
    return Intl.message(
      'Counters',
      name: 'counters',
      desc: '',
      args: [],
    );
  }

  /// `Anonymous user`
  String get anonymous_user {
    return Intl.message(
      'Anonymous user',
      name: 'anonymous_user',
      desc: '',
      args: [],
    );
  }

  /// `The image has been saved successfully`
  String get Image_is_saved {
    return Intl.message(
      'The image has been saved successfully',
      name: 'Image_is_saved',
      desc: '',
      args: [],
    );
  }

  /// `The file has been saved successfully`
  String get file_is_saved {
    return Intl.message(
      'The file has been saved successfully',
      name: 'file_is_saved',
      desc: '',
      args: [],
    );
  }

  /// `New Entry`
  String get new_entry {
    return Intl.message(
      'New Entry',
      name: 'new_entry',
      desc: '',
      args: [],
    );
  }

  /// `New Request`
  String get new_request {
    return Intl.message(
      'New Request',
      name: 'new_request',
      desc: '',
      args: [],
    );
  }

  /// `request`
  String get request {
    return Intl.message(
      'request',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `Field should have unique value`
  String get uniqueValue {
    return Intl.message(
      'Field should have unique value',
      name: 'uniqueValue',
      desc: '',
      args: [],
    );
  }

  /// `My groups users`
  String get my_groups_users {
    return Intl.message(
      'My groups users',
      name: 'my_groups_users',
      desc: '',
      args: [],
    );
  }

  /// `My groups`
  String get my_groups {
    return Intl.message(
      'My groups',
      name: 'my_groups',
      desc: '',
      args: [],
    );
  }

  /// `Not Set`
  String get notSet {
    return Intl.message(
      'Not Set',
      name: 'notSet',
      desc: '',
      args: [],
    );
  }

  /// `Previous Step Owner`
  String get previousStepOwner {
    return Intl.message(
      'Previous Step Owner',
      name: 'previousStepOwner',
      desc: '',
      args: [],
    );
  }

  /// `Manager`
  String get manager {
    return Intl.message(
      'Manager',
      name: 'manager',
      desc: '',
      args: [],
    );
  }

  /// `Fallback Assignment`
  String get fallbackAssignment {
    return Intl.message(
      'Fallback Assignment',
      name: 'fallbackAssignment',
      desc: '',
      args: [],
    );
  }

  /// `Step Name`
  String get stepName {
    return Intl.message(
      'Step Name',
      name: 'stepName',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Enter query name`
  String get enter_query_name {
    return Intl.message(
      'Enter query name',
      name: 'enter_query_name',
      desc: '',
      args: [],
    );
  }

  /// `Saved queries`
  String get saved_queries {
    return Intl.message(
      'Saved queries',
      name: 'saved_queries',
      desc: '',
      args: [],
    );
  }

  /// `New query`
  String get new_query {
    return Intl.message(
      'New query',
      name: 'new_query',
      desc: '',
      args: [],
    );
  }

  /// `Edit query`
  String get edit_query {
    return Intl.message(
      'Edit query',
      name: 'edit_query',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to save the new changes? Note that saving them will discard the previous changes`
  String get edit_query_desc {
    return Intl.message(
      'Do you want to save the new changes? Note that saving them will discard the previous changes',
      name: 'edit_query_desc',
      desc: '',
      args: [],
    );
  }

  /// `on`
  String get on_date {
    return Intl.message(
      'on',
      name: 'on_date',
      desc: '',
      args: [],
    );
  }

  /// `Action has been executed`
  String get workflowActionMessage {
    return Intl.message(
      'Action has been executed',
      name: 'workflowActionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `{env, select, uat{Add to list} yasprod{Add to list} other{Add to list}}`
  String add_to_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Add to list',
        'yasprod': 'Add to list',
        'other': 'Add to list',
      },
      name: 'add_to_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Create new list} yasprod{Create new list} other{Create new list}}`
  String create_new_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Create new list',
        'yasprod': 'Create new list',
        'other': 'Create new list',
      },
      name: 'create_new_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{List name} yasprod{List name} other{List name}}`
  String collection_name(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'List name',
        'yasprod': 'List name',
        'other': 'List name',
      },
      name: 'collection_name',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{List icon} yasprod{List icon} other{List icon}}`
  String collection_icon(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'List icon',
        'yasprod': 'List icon',
        'other': 'List icon',
      },
      name: 'collection_icon',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Are you sure you want to remove the entries from the list?} yasprod{Are you sure you want to remove the entries from the list?} other{Are you sure you want to remove the entries from the list?}}`
  String are_you_sure_you_want_to_remove_the_entries_from_the_collection(
      Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Are you sure you want to remove the entries from the list?',
        'yasprod': 'Are you sure you want to remove the entries from the list?',
        'other': 'Are you sure you want to remove the entries from the list?',
      },
      name: 'are_you_sure_you_want_to_remove_the_entries_from_the_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Are you sure you want to remove the entry from the list?} yasprod{Are you sure you want to remove the entry from the list?} other{Are you sure you want to remove the entry from the list?}}`
  String are_you_sure_you_want_to_remove_the_entry_from_the_collection(
      Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Are you sure you want to remove the entry from the list?',
        'yasprod': 'Are you sure you want to remove the entry from the list?',
        'other': 'Are you sure you want to remove the entry from the list?',
      },
      name: 'are_you_sure_you_want_to_remove_the_entry_from_the_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Remove from list} yasprod{Remove from list} other{Remove from list}}`
  String remove_from_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Remove from list',
        'yasprod': 'Remove from list',
        'other': 'Remove from list',
      },
      name: 'remove_from_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Delete list} yasprod{Delete list} other{Delete list}}`
  String delete_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Delete list',
        'yasprod': 'Delete list',
        'other': 'Delete list',
      },
      name: 'delete_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{The list name is duplicated} yasprod{The list name is duplicated} other{The list name is duplicated}}`
  String the_collection_name_is_duplicated(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'The list name is duplicated',
        'yasprod': 'The list name is duplicated',
        'other': 'The list name is duplicated',
      },
      name: 'the_collection_name_is_duplicated',
      desc: 'Env',
      args: [env],
    );
  }

  /// `Please enter a unique name`
  String get please_enter_a_unique_name {
    return Intl.message(
      'Please enter a unique name',
      name: 'please_enter_a_unique_name',
      desc: '',
      args: [],
    );
  }

  /// `{env, select, uat{The list name is unique, Please enter a new name} yasprod{The list name is unique, Please enter a new name} other{The list name is unique, Please enter a new name}}`
  String the_collection_name_is_unique_please_enter_a_new_name(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'The list name is unique, Please enter a new name',
        'yasprod': 'The list name is unique, Please enter a new name',
        'other': 'The list name is unique, Please enter a new name',
      },
      name: 'the_collection_name_is_unique_please_enter_a_new_name',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Are you sure you want to delete list} yasprod{Are you sure you want to delete list} other{Are you sure you want to delete list}}`
  String are_you_sure_you_want_to_delete_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Are you sure you want to delete list',
        'yasprod': 'Are you sure you want to delete list',
        'other': 'Are you sure you want to delete list',
      },
      name: 'are_you_sure_you_want_to_delete_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Tap to choose list} yasprod{Tap to choose list} other{Tap to choose list}}`
  String tap_to_choose_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Tap to choose list',
        'yasprod': 'Tap to choose list',
        'other': 'Tap to choose list',
      },
      name: 'tap_to_choose_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Choose list} yasprod{Choose list} other{Choose list}}`
  String choose_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Choose list',
        'yasprod': 'Choose list',
        'other': 'Choose list',
      },
      name: 'choose_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{Edit list} yasprod{Edit list} other{Edit list}}`
  String edit_collection(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'Edit list',
        'yasprod': 'Edit list',
        'other': 'Edit list',
      },
      name: 'edit_collection',
      desc: 'Env',
      args: [env],
    );
  }

  /// `{env, select, uat{The list has no entries to export} yasprod{The list has no entries to export} other{The list has no entries to export}}`
  String the_collection_has_no_entries_to_export(Object env) {
    return Intl.select(
      env,
      {
        'uat': 'The list has no entries to export',
        'yasprod': 'The list has no entries to export',
        'other': 'The list has no entries to export',
      },
      name: 'the_collection_has_no_entries_to_export',
      desc: 'Env',
      args: [env],
    );
  }

  /// `Are you sure you want to delete the query? It will be permanently deleted and you won't be able to retrieve it.`
  String get confirm_delete_query {
    return Intl.message(
      'Are you sure you want to delete the query? It will be permanently deleted and you won\'t be able to retrieve it.',
      name: 'confirm_delete_query',
      desc: '',
      args: [],
    );
  }

  /// `Delete query`
  String get dialog_tittle_delete_query {
    return Intl.message(
      'Delete query',
      name: 'dialog_tittle_delete_query',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `You don't have access`
  String get you_dont_have_access {
    return Intl.message(
      'You don\'t have access',
      name: 'you_dont_have_access',
      desc: '',
      args: [],
    );
  }

  /// `Please contact the administrator.`
  String get please_contact_admin {
    return Intl.message(
      'Please contact the administrator.',
      name: 'please_contact_admin',
      desc: '',
      args: [],
    );
  }

  /// `from`
  String get from {
    return Intl.message(
      'from',
      name: 'from',
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

  /// `Export to Excel`
  String get export_to_excel {
    return Intl.message(
      'Export to Excel',
      name: 'export_to_excel',
      desc: '',
      args: [],
    );
  }

  /// `Release to load more`
  String get canLoadingText {
    return Intl.message(
      'Release to load more',
      name: 'canLoadingText',
      desc: '',
      args: [],
    );
  }

  /// `Release to refresh`
  String get canRefreshText {
    return Intl.message(
      'Release to refresh',
      name: 'canRefreshText',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get canTwoLevelText {
    return Intl.message(
      '',
      name: 'canTwoLevelText',
      desc: '',
      args: [],
    );
  }

  /// `Pull up Load more`
  String get idleLoadingText {
    return Intl.message(
      'Pull up Load more',
      name: 'idleLoadingText',
      desc: '',
      args: [],
    );
  }

  /// `Pull down Refresh`
  String get idleRefreshText {
    return Intl.message(
      'Pull down Refresh',
      name: 'idleRefreshText',
      desc: '',
      args: [],
    );
  }

  /// `Load Failed`
  String get loadFailedText {
    return Intl.message(
      'Load Failed',
      name: 'loadFailedText',
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

  /// `No more data`
  String get noMoreText {
    return Intl.message(
      'No more data',
      name: 'noMoreText',
      desc: '',
      args: [],
    );
  }

  /// `No more {name}`
  String noMoreTextCustom(Object name) {
    return Intl.message(
      'No more $name',
      name: 'noMoreTextCustom',
      desc: 'name',
      args: [name],
    );
  }

  /// `Refresh completed`
  String get refreshCompleteText {
    return Intl.message(
      'Refresh completed',
      name: 'refreshCompleteText',
      desc: '',
      args: [],
    );
  }

  /// `Refresh failed`
  String get refreshFailedText {
    return Intl.message(
      'Refresh failed',
      name: 'refreshFailedText',
      desc: '',
      args: [],
    );
  }

  /// `Refreshing…`
  String get refreshingText {
    return Intl.message(
      'Refreshing…',
      name: 'refreshingText',
      desc: '',
      args: [],
    );
  }

  /// `The name is already used`
  String get name_duplicated {
    return Intl.message(
      'The name is already used',
      name: 'name_duplicated',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 3 characters in {languages}`
  String please_enter_at_least_three_characters_in(Object languages) {
    return Intl.message(
      'Please enter at least 3 characters in $languages',
      name: 'please_enter_at_least_three_characters_in',
      desc: 'languages',
      args: [languages],
    );
  }

  /// `Dynamic`
  String get dynamic_value {
    return Intl.message(
      'Dynamic',
      name: 'dynamic_value',
      desc: '',
      args: [],
    );
  }

  /// `Edit required fields`
  String get edit_required_fields {
    return Intl.message(
      'Edit required fields',
      name: 'edit_required_fields',
      desc: '',
      args: [],
    );
  }

  /// `Before taking any action, you must edit and fill-in the required fields`
  String
      get before_taking_any_action_you_must_edit_and_fill_in_the_required_fields {
    return Intl.message(
      'Before taking any action, you must edit and fill-in the required fields',
      name:
          'before_taking_any_action_you_must_edit_and_fill_in_the_required_fields',
      desc: '',
      args: [],
    );
  }

  /// `Some mandatory fields are required before taking an action. Please contact the system administration`
  String
      get some_mandatory_fields_are_required_before_taking_an_action_please_contact_the_system_administration {
    return Intl.message(
      'Some mandatory fields are required before taking an action. Please contact the system administration',
      name:
          'some_mandatory_fields_are_required_before_taking_an_action_please_contact_the_system_administration',
      desc: '',
      args: [],
    );
  }

  /// `Update fields`
  String get update_fields {
    return Intl.message(
      'Update fields',
      name: 'update_fields',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all the required fields`
  String get please_fill_in_all_the_required_fields {
    return Intl.message(
      'Please fill in all the required fields',
      name: 'please_fill_in_all_the_required_fields',
      desc: '',
      args: [],
    );
  }

  /// `Org Unit Manager`
  String get orgUnitManager {
    return Intl.message(
      'Org Unit Manager',
      name: 'orgUnitManager',
      desc: '',
      args: [],
    );
  }

  /// `No action available`
  String get no_action_available {
    return Intl.message(
      'No action available',
      name: 'no_action_available',
      desc: '',
      args: [],
    );
  }

  /// `Execute Action`
  String get execute_action {
    return Intl.message(
      'Execute Action',
      name: 'execute_action',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject {
    return Intl.message(
      'Subject',
      name: 'subject',
      desc: '',
      args: [],
    );
  }

  /// `Body`
  String get body {
    return Intl.message(
      'Body',
      name: 'body',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `CC`
  String get cc {
    return Intl.message(
      'CC',
      name: 'cc',
      desc: '',
      args: [],
    );
  }

  /// `BCC`
  String get bcc {
    return Intl.message(
      'BCC',
      name: 'bcc',
      desc: '',
      args: [],
    );
  }

  /// `Send email`
  String get send_email {
    return Intl.message(
      'Send email',
      name: 'send_email',
      desc: '',
      args: [],
    );
  }

  /// `Custom variables`
  String get custom_variables {
    return Intl.message(
      'Custom variables',
      name: 'custom_variables',
      desc: '',
      args: [],
    );
  }

  /// `Recipients`
  String get recipients {
    return Intl.message(
      'Recipients',
      name: 'recipients',
      desc: '',
      args: [],
    );
  }

  /// `Add entry link`
  String get add_entry_link {
    return Intl.message(
      'Add entry link',
      name: 'add_entry_link',
      desc: '',
      args: [],
    );
  }

  /// `View entry`
  String get view_entry {
    return Intl.message(
      'View entry',
      name: 'view_entry',
      desc: '',
      args: [],
    );
  }

  /// `Maps to`
  String get maps_to {
    return Intl.message(
      'Maps to',
      name: 'maps_to',
      desc: '',
      args: [],
    );
  }

  /// `Add {name}`
  String add_a(Object name) {
    return Intl.message(
      'Add $name',
      name: 'add_a',
      desc: 'name',
      args: [name],
    );
  }

  /// `Enter {name}`
  String enter_a(Object name) {
    return Intl.message(
      'Enter $name',
      name: 'enter_a',
      desc: 'name',
      args: [name],
    );
  }

  /// `Static`
  String get static {
    return Intl.message(
      'Static',
      name: 'static',
      desc: '',
      args: [],
    );
  }

  /// `Add Recipient`
  String get addRecipient {
    return Intl.message(
      'Add Recipient',
      name: 'addRecipient',
      desc: '',
      args: [],
    );
  }

  /// `Tap to add`
  String get tap_to_add {
    return Intl.message(
      'Tap to add',
      name: 'tap_to_add',
      desc: '',
      args: [],
    );
  }

  /// `Entity metadata`
  String get entity_metadata {
    return Intl.message(
      'Entity metadata',
      name: 'entity_metadata',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get entry_of_view {
    return Intl.message(
      'View',
      name: 'entry_of_view',
      desc: '',
      args: [],
    );
  }

  /// `Edit entry`
  String get edit_entry {
    return Intl.message(
      'Edit entry',
      name: 'edit_entry',
      desc: '',
      args: [],
    );
  }

  /// `All variables should be mapped`
  String get all_variables_should_be_mapped {
    return Intl.message(
      'All variables should be mapped',
      name: 'all_variables_should_be_mapped',
      desc: '',
      args: [],
    );
  }

  /// `Please select a view`
  String get please_select_a_view {
    return Intl.message(
      'Please select a view',
      name: 'please_select_a_view',
      desc: '',
      args: [],
    );
  }

  /// `Please add recipients`
  String get please_add_recipients {
    return Intl.message(
      'Please add recipients',
      name: 'please_add_recipients',
      desc: '',
      args: [],
    );
  }

  /// `Recipient`
  String get a_recipient {
    return Intl.message(
      'Recipient',
      name: 'a_recipient',
      desc: '',
      args: [],
    );
  }

  /// `Current Step Owner`
  String get metaCurrentSteps {
    return Intl.message(
      'Current Step Owner',
      name: 'metaCurrentSteps',
      desc: '',
      args: [],
    );
  }

  /// `Step Owner Direct Manager`
  String get directManager {
    return Intl.message(
      'Step Owner Direct Manager',
      name: 'directManager',
      desc: '',
      args: [],
    );
  }

  /// `Press again to exit`
  String get press_again_to_exit {
    return Intl.message(
      'Press again to exit',
      name: 'press_again_to_exit',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get content {
    return Intl.message(
      'Content',
      name: 'content',
      desc: '',
      args: [],
    );
  }

  /// `Channel type`
  String get channel_type {
    return Intl.message(
      'Channel type',
      name: 'channel_type',
      desc: '',
      args: [],
    );
  }

  /// `In app`
  String get in_app {
    return Intl.message(
      'In app',
      name: 'in_app',
      desc: '',
      args: [],
    );
  }

  /// `Send notification`
  String get send_notification {
    return Intl.message(
      'Send notification',
      name: 'send_notification',
      desc: '',
      args: [],
    );
  }

  /// `Icon`
  String get icon {
    return Intl.message(
      'Icon',
      name: 'icon',
      desc: '',
      args: [],
    );
  }

  /// `Module`
  String get module {
    return Intl.message(
      'Module',
      name: 'module',
      desc: '',
      args: [],
    );
  }

  /// `Entity`
  String get entity {
    return Intl.message(
      'Entity',
      name: 'entity',
      desc: '',
      args: [],
    );
  }

  /// `Select entity`
  String get select_entity {
    return Intl.message(
      'Select entity',
      name: 'select_entity',
      desc: '',
      args: [],
    );
  }

  /// `No available services`
  String get no_available_services {
    return Intl.message(
      'No available services',
      name: 'no_available_services',
      desc: '',
      args: [],
    );
  }

  /// `Everyone`
  String get everyone {
    return Intl.message(
      'Everyone',
      name: 'everyone',
      desc: '',
      args: [],
    );
  }

  /// `Who can read your message`
  String get who_can_read_your_message {
    return Intl.message(
      'Who can read your message',
      name: 'who_can_read_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Any one can access your message`
  String get any_one_can_access_your_message {
    return Intl.message(
      'Any one can access your message',
      name: 'any_one_can_access_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Specific User/Group`
  String get specific_user_group {
    return Intl.message(
      'Specific User/Group',
      name: 'specific_user_group',
      desc: '',
      args: [],
    );
  }

  /// `Specific users who can access your message`
  String get specific_users_who_can_access_your_message {
    return Intl.message(
      'Specific users who can access your message',
      name: 'specific_users_who_can_access_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Enter user or group`
  String get enter_user_or_group {
    return Intl.message(
      'Enter user or group',
      name: 'enter_user_or_group',
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

  /// `other`
  String get other {
    return Intl.message(
      'other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `others`
  String get others {
    return Intl.message(
      'others',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Who can read this message`
  String get who_can_read_this_message {
    return Intl.message(
      'Who can read this message',
      name: 'who_can_read_this_message',
      desc: '',
      args: [],
    );
  }

  /// `There is no ongoing requests`
  String get there_is_no_ongoing_requests {
    return Intl.message(
      'There is no ongoing requests',
      name: 'there_is_no_ongoing_requests',
      desc: '',
      args: [],
    );
  }

  /// `There is no completed requests`
  String get there_is_no_completed_requests {
    return Intl.message(
      'There is no completed requests',
      name: 'there_is_no_completed_requests',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any ongoing request`
  String get you_do_not_have_any_ongoing_request {
    return Intl.message(
      'You don\'t have any ongoing request',
      name: 'you_do_not_have_any_ongoing_request',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any completed request`
  String get you_do_not_have_any_completed_request {
    return Intl.message(
      'You don\'t have any completed request',
      name: 'you_do_not_have_any_completed_request',
      desc: '',
      args: [],
    );
  }

  /// `Invalid value`
  String get invalidValue {
    return Intl.message(
      'Invalid value',
      name: 'invalidValue',
      desc: '',
      args: [],
    );
  }

  /// `The summary doesn't exist!`
  String get the_summary_does_not_exist {
    return Intl.message(
      'The summary doesn\'t exist!',
      name: 'the_summary_does_not_exist',
      desc: '',
      args: [],
    );
  }

  /// `Choose step`
  String get choose_step {
    return Intl.message(
      'Choose step',
      name: 'choose_step',
      desc: '',
      args: [],
    );
  }

  /// `Choose actions`
  String get choose_actions {
    return Intl.message(
      'Choose actions',
      name: 'choose_actions',
      desc: '',
      args: [],
    );
  }

  /// `Execute`
  String get execute {
    return Intl.message(
      'Execute',
      name: 'execute',
      desc: '',
      args: [],
    );
  }

  /// `Move`
  String get move {
    return Intl.message(
      'Move',
      name: 'move',
      desc: '',
      args: [],
    );
  }

  /// `Leave Confirmation`
  String get leave_confirmation {
    return Intl.message(
      'Leave Confirmation',
      name: 'leave_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to close this page without saving changes?`
  String get sure_to_close_dialog_without_save {
    return Intl.message(
      'Are you sure to close this page without saving changes?',
      name: 'sure_to_close_dialog_without_save',
      desc: '',
      args: [],
    );
  }

  /// `Leave`
  String get leave {
    return Intl.message(
      'Leave',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Stay`
  String get stay {
    return Intl.message(
      'Stay',
      name: 'stay',
      desc: '',
      args: [],
    );
  }

  /// `Choose at least one action`
  String get choose_at_least_one_action {
    return Intl.message(
      'Choose at least one action',
      name: 'choose_at_least_one_action',
      desc: '',
      args: [],
    );
  }

  /// `Is empty`
  String get isEmpty {
    return Intl.message(
      'Is empty',
      name: 'isEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Is filled`
  String get isNotEmpty {
    return Intl.message(
      'Is filled',
      name: 'isNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `The action was executed successfully`
  String get the_action_was_executed_successfully {
    return Intl.message(
      'The action was executed successfully',
      name: 'the_action_was_executed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `You are unauthorized to add a new request from this service`
  String get un_authorize_to_add_request {
    return Intl.message(
      'You are unauthorized to add a new request from this service',
      name: 'un_authorize_to_add_request',
      desc: '',
      args: [],
    );
  }

  /// `Current step`
  String get current_step {
    return Intl.message(
      'Current step',
      name: 'current_step',
      desc: '',
      args: [],
    );
  }

  /// `Previous steps`
  String get previous_steps {
    return Intl.message(
      'Previous steps',
      name: 'previous_steps',
      desc: '',
      args: [],
    );
  }

  /// `Current step owner`
  String get current_step_owner {
    return Intl.message(
      'Current step owner',
      name: 'current_step_owner',
      desc: '',
      args: [],
    );
  }

  /// `Current step original owner`
  String get current_step_original_owner {
    return Intl.message(
      'Current step original owner',
      name: 'current_step_original_owner',
      desc: '',
      args: [],
    );
  }

  /// `Current step received date`
  String get current_step_received_date {
    return Intl.message(
      'Current step received date',
      name: 'current_step_received_date',
      desc: '',
      args: [],
    );
  }

  /// `Is main step`
  String get is_main_step {
    return Intl.message(
      'Is main step',
      name: 'is_main_step',
      desc: '',
      args: [],
    );
  }

  /// `Is adhoc step`
  String get is_adhoc_step {
    return Intl.message(
      'Is adhoc step',
      name: 'is_adhoc_step',
      desc: '',
      args: [],
    );
  }

  /// `Duration execution`
  String get duration_execution {
    return Intl.message(
      'Duration execution',
      name: 'duration_execution',
      desc: '',
      args: [],
    );
  }

  /// `Previous steps owners`
  String get previous_steps_owners {
    return Intl.message(
      'Previous steps owners',
      name: 'previous_steps_owners',
      desc: '',
      args: [],
    );
  }

  /// `Previous steps original owners`
  String get previous_steps_original_owners {
    return Intl.message(
      'Previous steps original owners',
      name: 'previous_steps_original_owners',
      desc: '',
      args: [],
    );
  }

  /// `Adhoc steps`
  String get adhoc_steps {
    return Intl.message(
      'Adhoc steps',
      name: 'adhoc_steps',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `{name} downloaded successfully`
  String the_file_downloaded_successfully(Object name) {
    return Intl.message(
      '$name downloaded successfully',
      name: 'the_file_downloaded_successfully',
      desc: '',
      args: [name],
    );
  }

  /// `Downloading {name}`
  String downloading_file(Object name) {
    return Intl.message(
      'Downloading $name',
      name: 'downloading_file',
      desc: '',
      args: [name],
    );
  }

  /// `Undefined`
  String get undefined {
    return Intl.message(
      'Undefined',
      name: 'undefined',
      desc: '',
      args: [],
    );
  }

  /// `Other values`
  String get otherValues {
    return Intl.message(
      'Other values',
      name: 'otherValues',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, other{You must upload {count} files at least}}`
  String v_you_should_upload_at_least(num count) {
    return Intl.plural(
      count,
      other: 'You must upload $count files at least',
      name: 'v_you_should_upload_at_least',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, other{You must upload {count} files at most}}`
  String v_you_should_upload_at_most(num count) {
    return Intl.plural(
      count,
      other: 'You must upload $count files at most',
      name: 'v_you_should_upload_at_most',
      desc: '',
      args: [count],
    );
  }

  /// `Requests.Ongoing`
  String get ongoingMyRequests {
    return Intl.message(
      'Requests.Ongoing',
      name: 'ongoingMyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Requests.Completed`
  String get completedMyRequests {
    return Intl.message(
      'Requests.Completed',
      name: 'completedMyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Inbox.Ongoing`
  String get ongoingInbox {
    return Intl.message(
      'Inbox.Ongoing',
      name: 'ongoingInbox',
      desc: '',
      args: [],
    );
  }

  /// `Inbox.Completed`
  String get completedInbox {
    return Intl.message(
      'Inbox.Completed',
      name: 'completedInbox',
      desc: '',
      args: [],
    );
  }

  /// `Add new entry`
  String get add_new_entry {
    return Intl.message(
      'Add new entry',
      name: 'add_new_entry',
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

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `You are unauthorized to edit this field`
  String get error_Unauthorized_to_edit_field {
    return Intl.message(
      'You are unauthorized to edit this field',
      name: 'error_Unauthorized_to_edit_field',
      desc: '',
      args: [],
    );
  }

  /// `Unassigned`
  String get unassigned {
    return Intl.message(
      'Unassigned',
      name: 'unassigned',
      desc: '',
      args: [],
    );
  }

  /// `Select a date`
  String get select_a_date {
    return Intl.message(
      'Select a date',
      name: 'select_a_date',
      desc: '',
      args: [],
    );
  }

  /// `Select a year`
  String get select_a_year {
    return Intl.message(
      'Select a year',
      name: 'select_a_year',
      desc: '',
      args: [],
    );
  }

  /// `Select a month`
  String get select_a_month {
    return Intl.message(
      'Select a month',
      name: 'select_a_month',
      desc: '',
      args: [],
    );
  }

  /// `Select a time`
  String get select_a_time {
    return Intl.message(
      'Select a time',
      name: 'select_a_time',
      desc: '',
      args: [],
    );
  }

  /// `Select a range`
  String get select_a_rang {
    return Intl.message(
      'Select a range',
      name: 'select_a_rang',
      desc: '',
      args: [],
    );
  }

  /// `This week`
  String get this_week {
    return Intl.message(
      'This week',
      name: 'this_week',
      desc: '',
      args: [],
    );
  }

  /// `This month`
  String get this_month {
    return Intl.message(
      'This month',
      name: 'this_month',
      desc: '',
      args: [],
    );
  }

  /// `Range`
  String get range {
    return Intl.message(
      'Range',
      name: 'range',
      desc: '',
      args: [],
    );
  }

  /// `There is no data to display`
  String get gv_no_data {
    return Intl.message(
      'There is no data to display',
      name: 'gv_no_data',
      desc: '',
      args: [],
    );
  }

  /// `Percentage`
  String get percentage {
    return Intl.message(
      'Percentage',
      name: 'percentage',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Proceed Threshold Type`
  String get thresholdType {
    return Intl.message(
      'Proceed Threshold Type',
      name: 'thresholdType',
      desc: '',
      args: [],
    );
  }

  /// `Proceed Threshold`
  String get proceedThreshold {
    return Intl.message(
      'Proceed Threshold',
      name: 'proceedThreshold',
      desc: '',
      args: [],
    );
  }

  /// `Threshold value is required`
  String get thresholdValueRequired {
    return Intl.message(
      'Threshold value is required',
      name: 'thresholdValueRequired',
      desc: '',
      args: [],
    );
  }

  /// `Threshold Value should be between 0 and 100`
  String get thresholdValuePercentageInvalid {
    return Intl.message(
      'Threshold Value should be between 0 and 100',
      name: 'thresholdValuePercentageInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Some Users`
  String get someUsers {
    return Intl.message(
      'Some Users',
      name: 'someUsers',
      desc: '',
      args: [],
    );
  }

  /// `Main Action Execution Condition`
  String get mainActionExecutionCondition {
    return Intl.message(
      'Main Action Execution Condition',
      name: 'mainActionExecutionCondition',
      desc: '',
      args: [],
    );
  }

  /// `Most Chosen Secondary Action`
  String get mostChosenSecondaryAction {
    return Intl.message(
      'Most Chosen Secondary Action',
      name: 'mostChosenSecondaryAction',
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

  /// `All Entries`
  String get all_entries {
    return Intl.message(
      'All Entries',
      name: 'all_entries',
      desc: '',
      args: [],
    );
  }

  /// `Lists`
  String get collections {
    return Intl.message(
      'Lists',
      name: 'collections',
      desc: '',
      args: [],
    );
  }

  /// `All Notifications`
  String get all_notification {
    return Intl.message(
      'All Notifications',
      name: 'all_notification',
      desc: '',
      args: [],
    );
  }

  /// `Biometric ID`
  String get bio_id {
    return Intl.message(
      'Biometric ID',
      name: 'bio_id',
      desc: '',
      args: [],
    );
  }

  /// `You can activate Biometric ID {id} to restrict access to this mobile`
  String bio_id_hint(Object id) {
    return Intl.message(
      'You can activate Biometric ID $id to restrict access to this mobile',
      name: 'bio_id_hint',
      desc: '',
      args: [id],
    );
  }

  /// `Activate Biometric ID`
  String get activate_bio_id {
    return Intl.message(
      'Activate Biometric ID',
      name: 'activate_bio_id',
      desc: '',
      args: [],
    );
  }

  /// `When you activate Biometric ID, you will be asked to authenticate using your {id} to access the app`
  String activate_bio_id_desc(Object id) {
    return Intl.message(
      'When you activate Biometric ID, you will be asked to authenticate using your $id to access the app',
      name: 'activate_bio_id_desc',
      desc: 'id',
      args: [id],
    );
  }

  /// `Deactivate Biometric ID`
  String get deactivate_bio_id {
    return Intl.message(
      'Deactivate Biometric ID',
      name: 'deactivate_bio_id',
      desc: '',
      args: [],
    );
  }

  /// `When you deactivate Biometric ID, you will be asked to authenticate using your {id} to access the app`
  String deactivate_bio_id_desc(Object id) {
    return Intl.message(
      'When you deactivate Biometric ID, you will be asked to authenticate using your $id to access the app',
      name: 'deactivate_bio_id_desc',
      desc: '',
      args: [id],
    );
  }

  /// `Face ID`
  String get face_id {
    return Intl.message(
      'Face ID',
      name: 'face_id',
      desc: '',
      args: [],
    );
  }

  /// `Finger Print`
  String get finger_print {
    return Intl.message(
      'Finger Print',
      name: 'finger_print',
      desc: '',
      args: [],
    );
  }

  /// `Iris`
  String get iris {
    return Intl.message(
      'Iris',
      name: 'iris',
      desc: '',
      args: [],
    );
  }

  /// `You should authenticate to continue`
  String get you_should_authenticate_to_continue {
    return Intl.message(
      'You should authenticate to continue',
      name: 'you_should_authenticate_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `Authentication required`
  String get auth_required {
    return Intl.message(
      'Authentication required',
      name: 'auth_required',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get go_to_settings {
    return Intl.message(
      'Go to settings',
      name: 'go_to_settings',
      desc: '',
      args: [],
    );
  }

  /// `Verify identity`
  String get android_biometric_hint {
    return Intl.message(
      'Verify identity',
      name: 'android_biometric_hint',
      desc: '',
      args: [],
    );
  }

  /// `Not recognized. Try again.`
  String get android_biometric_not_recognized {
    return Intl.message(
      'Not recognized. Try again.',
      name: 'android_biometric_not_recognized',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get android_biometric_success {
    return Intl.message(
      'Success',
      name: 'android_biometric_success',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get android_cancel_button {
    return Intl.message(
      'Cancel',
      name: 'android_cancel_button',
      desc: '',
      args: [],
    );
  }

  /// `Authentication required`
  String get android_sign_in_title {
    return Intl.message(
      'Authentication required',
      name: 'android_sign_in_title',
      desc: '',
      args: [],
    );
  }

  /// `Biometric required`
  String get android_biometric_required_title {
    return Intl.message(
      'Biometric required',
      name: 'android_biometric_required_title',
      desc: '',
      args: [],
    );
  }

  /// `Device credentials required`
  String get android_device_credentials_required_title {
    return Intl.message(
      'Device credentials required',
      name: 'android_device_credentials_required_title',
      desc: '',
      args: [],
    );
  }

  /// `Device credentials required`
  String get android_device_credentials_setup_description {
    return Intl.message(
      'Device credentials required',
      name: 'android_device_credentials_setup_description',
      desc: '',
      args: [],
    );
  }

  /// `Biometric authentication is disabled. Please lock and unlock your screen to enable it.`
  String get ios_lock_out {
    return Intl.message(
      'Biometric authentication is disabled. Please lock and unlock your screen to enable it.',
      name: 'ios_lock_out',
      desc: '',
      args: [],
    );
  }

  /// `Please use your passcode to unlock the app.`
  String get ios_lock_out_fallback {
    return Intl.message(
      'Please use your passcode to unlock the app.',
      name: 'ios_lock_out_fallback',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ios_ok_button {
    return Intl.message(
      'OK',
      name: 'ios_ok_button',
      desc: '',
      args: [],
    );
  }

  /// `User Collection`
  String get user_collection {
    return Intl.message(
      'User Collection',
      name: 'user_collection',
      desc: '',
      args: [],
    );
  }

  /// `No similar fields`
  String get no_similar_fields {
    return Intl.message(
      'No similar fields',
      name: 'no_similar_fields',
      desc: '',
      args: [],
    );
  }

  /// `You haven't created any lists yet`
  String get you_haven_not_created_any_lists_yet {
    return Intl.message(
      'You haven\'t created any lists yet',
      name: 'you_haven_not_created_any_lists_yet',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'ar'),
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
