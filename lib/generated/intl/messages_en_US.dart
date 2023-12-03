// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static String m0(id) =>
      "When you activate Biometric ID, you will be asked to authenticate using your ${id} to access the app";

  static String m1(name) => "Add ${name}";

  static String m2(env) => "${Intl.select(env, {
            'uat': 'Add to list',
            'yasprod': 'Add to list',
            'other': 'Add to list',
          })}";

  static String m3(appVersion) => "App Version ${appVersion}";

  static String m4(count) =>
      "${Intl.plural(count, zero: ' ', one: 'Are you sure you want to archive the entry?', other: 'Are you sure you want to archive the entries')}";

  static String m5(env) => "${Intl.select(env, {
            'uat': 'Are you sure you want to delete list',
            'yasprod': 'Are you sure you want to delete list',
            'other': 'Are you sure you want to delete list',
          })}";

  static String m6(env) => "${Intl.select(env, {
            'uat': 'Are you sure you want to remove the entries from the list?',
            'yasprod':
                'Are you sure you want to remove the entries from the list?',
            'other':
                'Are you sure you want to remove the entries from the list?',
          })}";

  static String m7(env) => "${Intl.select(env, {
            'uat': 'Are you sure you want to remove the entry from the list?',
            'yasprod':
                'Are you sure you want to remove the entry from the list?',
            'other': 'Are you sure you want to remove the entry from the list?',
          })}";

  static String m8(id) =>
      "You can activate Biometric ID ${id} to restrict access to this mobile";

  static String m9(env) => "${Intl.select(env, {
            'uat': 'Choose list',
            'yasprod': 'Choose list',
            'other': 'Choose list',
          })}";

  static String m10(step) => "Step ${step} of 2";

  static String m11(env) => "${Intl.select(env, {
            'uat': 'List icon',
            'yasprod': 'List icon',
            'other': 'List icon',
          })}";

  static String m12(env) => "${Intl.select(env, {
            'uat': 'List name',
            'yasprod': 'List name',
            'other': 'List name',
          })}";

  static String m13(env) => "${Intl.select(env, {
            'uat': 'Create new list',
            'yasprod': 'Create new list',
            'other': 'Create new list',
          })}";

  static String m14(date) => "Created in ${date}";

  static String m15(date) => "Created ${date} ago";

  static String m16(env) => "${Intl.select(env, {
            'yasuat': 'Collection',
            'yasprod': 'Collection',
            'other': 'Collection',
          })}";

  static String m17(id) =>
      "When you deactivate Biometric ID, you will be asked to authenticate using your ${id} to access the app";

  static String m18(env) => "${Intl.select(env, {
            'uat': 'Delete list',
            'yasprod': 'Delete list',
            'other': 'Delete list',
          })}";

  static String m19(name) => "Downloading ${name}";

  static String m20(env) => "${Intl.select(env, {
            'uat': 'Edit list',
            'yasprod': 'Edit list',
            'other': 'Edit list',
          })}";

  static String m21(name) => "Enter ${name}";

  static String m22(count) => "${count} Entries";

  static String m23(count) =>
      "${Intl.plural(count, zero: '${count} Entries', one: '${count} Entry', other: '${count} Entries')}";

  static String m24(count) =>
      "${Intl.plural(count, zero: ' ', one: '${count} filter', other: '${count} filters')}";

  static String m25(time) => "Finished ${time}";

  static String m26(time) => "From ${time}";

  static String m27(time) => "Less than ${time}";

  static String m28(versionNumber, appName) =>
      "A new version ${versionNumber} of ${appName} app is now available!";

  static String m29(name) => "No more ${name}";

  static String m30(languages) =>
      "Please enter at least 3 characters in ${languages}";

  static String m31(date) => "Published in ${date}";

  static String m32(date) => "Published ${date} ago";

  static String m33(date, date2) =>
      "To be published between ${date} to ${date2}";

  static String m34(date, date2) => "To be published after ${date} to ${date2}";

  static String m35(date) => "To be published in ${date}";

  static String m36(date) => "To be published after ${date}";

  static String m37(count) =>
      "${Intl.plural(count, zero: ' ', one: '${count} Query', other: '${count} Queries')}";

  static String m38(count) =>
      "${Intl.plural(count, one: '1 Comment', other: '${count} Comments')}";

  static String m39(count) =>
      "${Intl.plural(count, one: 'You and 1 other', other: 'You and ${count} others')}";

  static String m40(env) => "${Intl.select(env, {
            'uat': 'Remove from list',
            'yasprod': 'Remove from list',
            'other': 'Remove from list',
          })}";

  static String m41(number) => "${number} Selected Records";

  static String m42(name) => "${name} selected";

  static String m43(count) =>
      "${Intl.plural(count, zero: ' ', one: '${count} Item selected ', other: '${count} Items selected')}";

  static String m44(MB) => "Files larger than ${MB} MB will not be added";

  static String m45(MB, files) =>
      "Files size must be less than ${MB} MB, ${files}";

  static String m46(time) => "Started ${time}";

  static String m47(env) => "${Intl.select(env, {
            'uat': 'Tap to choose list',
            'yasprod': 'Tap to choose list',
            'other': 'Tap to choose list',
          })}";

  static String m48(env) => "${Intl.select(env, {
            'uat': 'The list has no entries to export',
            'yasprod': 'The list has no entries to export',
            'other': 'The list has no entries to export',
          })}";

  static String m49(env) => "${Intl.select(env, {
            'uat': 'The list name is duplicated',
            'yasprod': 'The list name is duplicated',
            'other': 'The list name is duplicated',
          })}";

  static String m50(env) => "${Intl.select(env, {
            'uat': 'The list name is unique, Please enter a new name',
            'yasprod': 'The list name is unique, Please enter a new name',
            'other': 'The list name is unique, Please enter a new name',
          })}";

  static String m51(name) => "${name} downloaded successfully";

  static String m52(time) => " to ${time}";

  static String m53(date) => "Unpublished in ${date}";

  static String m54(date) => "Unpublished ${date} ago";

  static String m55(date) => "To be Unpublish in ${date}";

  static String m56(date) => "To be Unpublish after ${date}";

  static String m57(appVersion) => "Update to ${appVersion}";

  static String m58(count) =>
      "${Intl.plural(count, other: 'You must upload ${count} files at least')}";

  static String m59(count) =>
      "${Intl.plural(count, other: 'You must upload ${count} files at most')}";

  static String m60(version) => "Version ${version}";

  static String m61(count) =>
      "${Intl.plural(count, one: '1 View', other: '${count} Views')}";

  static String m62(Env) => "Welcome to ${Env}!";

  static String m63(name) => "Hi ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("Please enter the address"),
        "Image_is_saved": MessageLookupByLibrary.simpleMessage(
            "The image has been saved successfully"),
        "a_recipient": MessageLookupByLibrary.simpleMessage("Recipient"),
        "abilityToChange":
            MessageLookupByLibrary.simpleMessage("Ability to change user"),
        "about": MessageLookupByLibrary.simpleMessage("About"),
        "about_org": MessageLookupByLibrary.simpleMessage("About"),
        "access_denied": MessageLookupByLibrary.simpleMessage(
            "Access is permanently denied. Please give the appropriate permission to complete the process"),
        "action": MessageLookupByLibrary.simpleMessage("Action"),
        "actionRequired":
            MessageLookupByLibrary.simpleMessage("Action Required"),
        "activate_bio_id":
            MessageLookupByLibrary.simpleMessage("Activate Biometric ID"),
        "activate_bio_id_desc": m0,
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "adHoc": MessageLookupByLibrary.simpleMessage("Add Adhoc Step"),
        "add": MessageLookupByLibrary.simpleMessage("Add"),
        "addAdHocStep": MessageLookupByLibrary.simpleMessage("Add ad hoc step"),
        "addMore": MessageLookupByLibrary.simpleMessage("Add More"),
        "addNewEntry": MessageLookupByLibrary.simpleMessage("Add New Entry"),
        "addNewRecord": MessageLookupByLibrary.simpleMessage("Add New Record"),
        "addRecipient": MessageLookupByLibrary.simpleMessage("Add Recipient"),
        "add_a": m1,
        "add_condition": MessageLookupByLibrary.simpleMessage("Add Condition"),
        "add_condition_or_group":
            MessageLookupByLibrary.simpleMessage("Add Condition or Group"),
        "add_entity": MessageLookupByLibrary.simpleMessage("Add entry"),
        "add_entry_link":
            MessageLookupByLibrary.simpleMessage("Add entry link"),
        "add_group": MessageLookupByLibrary.simpleMessage("Add group"),
        "add_new_entry": MessageLookupByLibrary.simpleMessage("Add new entry"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add new item"),
        "add_to_collection": m2,
        "additionalApproval":
            MessageLookupByLibrary.simpleMessage("Additional Approval"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("Additional Information"),
        "adhoc_steps": MessageLookupByLibrary.simpleMessage("Adhoc steps"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "allUsers": MessageLookupByLibrary.simpleMessage("All Users"),
        "allViews": MessageLookupByLibrary.simpleMessage("All Views"),
        "all_condition_met":
            MessageLookupByLibrary.simpleMessage("All conditions are met"),
        "all_entries": MessageLookupByLibrary.simpleMessage("All Entries"),
        "all_items_selected":
            MessageLookupByLibrary.simpleMessage("All items selected"),
        "all_notification":
            MessageLookupByLibrary.simpleMessage("All Notifications"),
        "all_reaction": MessageLookupByLibrary.simpleMessage("all"),
        "all_variables_should_be_mapped": MessageLookupByLibrary.simpleMessage(
            "All variables should be mapped"),
        "alreadyExist":
            MessageLookupByLibrary.simpleMessage("is already exist"),
        "and": MessageLookupByLibrary.simpleMessage("and"),
        "android_biometric_hint":
            MessageLookupByLibrary.simpleMessage("Verify identity"),
        "android_biometric_not_recognized":
            MessageLookupByLibrary.simpleMessage("Not recognized. Try again."),
        "android_biometric_required_title":
            MessageLookupByLibrary.simpleMessage("Biometric required"),
        "android_biometric_success":
            MessageLookupByLibrary.simpleMessage("Success"),
        "android_cancel_button": MessageLookupByLibrary.simpleMessage("Cancel"),
        "android_device_credentials_required_title":
            MessageLookupByLibrary.simpleMessage("Device credentials required"),
        "android_device_credentials_setup_description":
            MessageLookupByLibrary.simpleMessage("Device credentials required"),
        "android_sign_in_title":
            MessageLookupByLibrary.simpleMessage("Authentication required"),
        "announcements": MessageLookupByLibrary.simpleMessage("Announcements"),
        "anonymous_user":
            MessageLookupByLibrary.simpleMessage("Anonymous user"),
        "any_one_can_access_your_message": MessageLookupByLibrary.simpleMessage(
            "Any one can access your message"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "app_continue": MessageLookupByLibrary.simpleMessage("Continue"),
        "app_version": m3,
        "applied_sort": MessageLookupByLibrary.simpleMessage("Applied Sort"),
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "archive": MessageLookupByLibrary.simpleMessage("Archive"),
        "archived": MessageLookupByLibrary.simpleMessage("Archived"),
        "are_you_sure_you_want_to_archive_entry": m4,
        "are_you_sure_you_want_to_delete_collection": m5,
        "are_you_sure_you_want_to_remove_the_entries_from_the_collection": m6,
        "are_you_sure_you_want_to_remove_the_entry_from_the_collection": m7,
        "asc": MessageLookupByLibrary.simpleMessage("Asc"),
        "ascending": MessageLookupByLibrary.simpleMessage("Ascending"),
        "atLeast": MessageLookupByLibrary.simpleMessage("Please add at least"),
        "atMost": MessageLookupByLibrary.simpleMessage("Please add at most "),
        "attachDoc": MessageLookupByLibrary.simpleMessage("Attach Document"),
        "attachFile": MessageLookupByLibrary.simpleMessage("Attach File"),
        "attachImage": MessageLookupByLibrary.simpleMessage("Attach Image"),
        "attachVideo": MessageLookupByLibrary.simpleMessage("Attach Video"),
        "auth_required":
            MessageLookupByLibrary.simpleMessage("Authentication required"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "badge": MessageLookupByLibrary.simpleMessage("Badge"),
        "bcc": MessageLookupByLibrary.simpleMessage("BCC"),
        "be_the_first_add_comment": MessageLookupByLibrary.simpleMessage(
            "Be the first to add a comment"),
        "be_the_first_add_discussion": MessageLookupByLibrary.simpleMessage(
            "Be the first to add a discussion"),
        "before_taking_any_action_you_must_edit_and_fill_in_the_required_fields":
            MessageLookupByLibrary.simpleMessage(
                "Before taking any action, you must edit and fill-in the required fields"),
        "bio_id": MessageLookupByLibrary.simpleMessage("Biometric ID"),
        "bio_id_hint": m8,
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "body": MessageLookupByLibrary.simpleMessage("Body"),
        "brightness": MessageLookupByLibrary.simpleMessage("Brightness"),
        "browse": MessageLookupByLibrary.simpleMessage("Browse"),
        "by": MessageLookupByLibrary.simpleMessage("By"),
        "calender": MessageLookupByLibrary.simpleMessage("Calender"),
        "camera": MessageLookupByLibrary.simpleMessage("Take Photo"),
        "canLoadingText":
            MessageLookupByLibrary.simpleMessage("Release to load more"),
        "canRefreshText":
            MessageLookupByLibrary.simpleMessage("Release to refresh"),
        "canTwoLevelText": MessageLookupByLibrary.simpleMessage(""),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "categoryNotSet":
            MessageLookupByLibrary.simpleMessage("Category Not Set"),
        "cc": MessageLookupByLibrary.simpleMessage("CC"),
        "channel_type": MessageLookupByLibrary.simpleMessage("Channel type"),
        "characters": MessageLookupByLibrary.simpleMessage("characters"),
        "charts": MessageLookupByLibrary.simpleMessage("Charts"),
        "choose_actions":
            MessageLookupByLibrary.simpleMessage("Choose actions"),
        "choose_at_least_one_action":
            MessageLookupByLibrary.simpleMessage("Choose at least one action"),
        "choose_collection": m9,
        "choose_lang_org_step": m10,
        "choose_step": MessageLookupByLibrary.simpleMessage("Choose step"),
        "clear": MessageLookupByLibrary.simpleMessage("Clear"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "collection_icon": m11,
        "collection_name": m12,
        "collections": MessageLookupByLibrary.simpleMessage("Lists"),
        "comingSoon": MessageLookupByLibrary.simpleMessage("Coming Soon"),
        "comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "completedInbox":
            MessageLookupByLibrary.simpleMessage("Inbox.Completed"),
        "completedMyRequests":
            MessageLookupByLibrary.simpleMessage("Requests.Completed"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter the password identical"),
        "confirm_delete_query": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to delete the query? It will be permanently deleted and you won\'t be able to retrieve it."),
        "contains": MessageLookupByLibrary.simpleMessage("Contains"),
        "content": MessageLookupByLibrary.simpleMessage("Content"),
        "continueAsGuest":
            MessageLookupByLibrary.simpleMessage("Continue as Guest"),
        "counters": MessageLookupByLibrary.simpleMessage("Counters"),
        "create": MessageLookupByLibrary.simpleMessage("Create"),
        "create_new_collection": m13,
        "created_at": m14,
        "created_at_meta": MessageLookupByLibrary.simpleMessage("Created at"),
        "created_at_relative": m15,
        "created_by": MessageLookupByLibrary.simpleMessage("Created by"),
        "current_step": MessageLookupByLibrary.simpleMessage("Current step"),
        "current_step_original_owner":
            MessageLookupByLibrary.simpleMessage("Current step original owner"),
        "current_step_owner":
            MessageLookupByLibrary.simpleMessage("Current step owner"),
        "current_step_received_date":
            MessageLookupByLibrary.simpleMessage("Current step received date"),
        "custom_variables":
            MessageLookupByLibrary.simpleMessage("Custom variables"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("Dark mode"),
        "dashboard": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dataCollection": m16,
        "day": MessageLookupByLibrary.simpleMessage("Day"),
        "day_ago": MessageLookupByLibrary.simpleMessage("1 day ago"),
        "deactivate_bio_id":
            MessageLookupByLibrary.simpleMessage("Deactivate Biometric ID"),
        "deactivate_bio_id_desc": m17,
        "defaultt": MessageLookupByLibrary.simpleMessage("Default"),
        "delete": MessageLookupByLibrary.simpleMessage("Delete"),
        "delete_collection": m18,
        "desc": MessageLookupByLibrary.simpleMessage("Desc"),
        "descending": MessageLookupByLibrary.simpleMessage("Descending"),
        "description": MessageLookupByLibrary.simpleMessage("Description"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "dialog_tittle_delete_query":
            MessageLookupByLibrary.simpleMessage("Delete query"),
        "directManager":
            MessageLookupByLibrary.simpleMessage("Step Owner Direct Manager"),
        "discussions": MessageLookupByLibrary.simpleMessage("Discussions"),
        "displayMatching": MessageLookupByLibrary.simpleMessage(
            "to display the matching Entries"),
        "display_option":
            MessageLookupByLibrary.simpleMessage("Display Options"),
        "does_not_contain":
            MessageLookupByLibrary.simpleMessage("Does not contain"),
        "does_not_start_with":
            MessageLookupByLibrary.simpleMessage("Does not start with"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "downloading_file": m19,
        "draft": MessageLookupByLibrary.simpleMessage("Draft"),
        "duration_execution":
            MessageLookupByLibrary.simpleMessage("Duration execution"),
        "dynamic": MessageLookupByLibrary.simpleMessage("dynamic"),
        "dynamic_value": MessageLookupByLibrary.simpleMessage("Dynamic"),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "edit_collection": m20,
        "edit_entry": MessageLookupByLibrary.simpleMessage("Edit entry"),
        "edit_profile": MessageLookupByLibrary.simpleMessage("Edit profile"),
        "edit_profile_appbar_title":
            MessageLookupByLibrary.simpleMessage("Edit profile"),
        "edit_profile_change_photo":
            MessageLookupByLibrary.simpleMessage("Change photo"),
        "edit_profile_update_button":
            MessageLookupByLibrary.simpleMessage("Update"),
        "edit_query": MessageLookupByLibrary.simpleMessage("Edit query"),
        "edit_query_desc": MessageLookupByLibrary.simpleMessage(
            "Do you want to save the new changes? Note that saving them will discard the previous changes"),
        "edit_required_fields":
            MessageLookupByLibrary.simpleMessage("Edit required fields"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emptyList": MessageLookupByLibrary.simpleMessage("Empty List"),
        "emptyRecords": MessageLookupByLibrary.simpleMessage("No Results"),
        "endWorkflow":
            MessageLookupByLibrary.simpleMessage("End Workflow Step"),
        "end_year": MessageLookupByLibrary.simpleMessage("End Year"),
        "enter": MessageLookupByLibrary.simpleMessage("Enter"),
        "enterNumber": MessageLookupByLibrary.simpleMessage("Enter Number"),
        "enter_a": m21,
        "enter_query_name":
            MessageLookupByLibrary.simpleMessage("Enter query name"),
        "enter_user_or_group":
            MessageLookupByLibrary.simpleMessage("Enter user or group"),
        "entity": MessageLookupByLibrary.simpleMessage("Entity"),
        "entity_list": MessageLookupByLibrary.simpleMessage("Entity List"),
        "entity_metadata":
            MessageLookupByLibrary.simpleMessage("Entity metadata"),
        "entries": MessageLookupByLibrary.simpleMessage("Entries"),
        "entries_count": m22,
        "entry": MessageLookupByLibrary.simpleMessage("Entry"),
        "entry_count": m23,
        "entry_fields": MessageLookupByLibrary.simpleMessage("Entry Fields"),
        "entry_metadata":
            MessageLookupByLibrary.simpleMessage("Entry Metadata"),
        "entry_of_view": MessageLookupByLibrary.simpleMessage("View"),
        "equal": MessageLookupByLibrary.simpleMessage("Equal"),
        "errorHappened": MessageLookupByLibrary.simpleMessage("Error Happened"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "error_Timeout_Error": MessageLookupByLibrary.simpleMessage("TIME OUT"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "error_Unauthorized_to_edit_field":
            MessageLookupByLibrary.simpleMessage(
                "You are unauthorized to edit this field"),
        "error_cancel_token": MessageLookupByLibrary.simpleMessage(
            "The connection is interrupted"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("Conflict error"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "An error occurred during the connection"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("YOU DO NOT HAVE PRIVILEGE"),
        "error_general": MessageLookupByLibrary.simpleMessage(
            "AN UNEXPECTED ERROR OCCURRED"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER ERROR"),
        "error_publish_unpublish_post_schedule":
            MessageLookupByLibrary.simpleMessage(
                "You can\'t publish/unpublish post by scheduled date."),
        "error_socket":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "event": MessageLookupByLibrary.simpleMessage("event"),
        "eventIsEnded":
            MessageLookupByLibrary.simpleMessage("The event is ended"),
        "event_ended": MessageLookupByLibrary.simpleMessage("Ended"),
        "event_ongoing": MessageLookupByLibrary.simpleMessage("OnGoing"),
        "event_upcoming": MessageLookupByLibrary.simpleMessage("Upcoming"),
        "events": MessageLookupByLibrary.simpleMessage("Events"),
        "everyone": MessageLookupByLibrary.simpleMessage("Everyone"),
        "execute": MessageLookupByLibrary.simpleMessage("Execute"),
        "execute_action":
            MessageLookupByLibrary.simpleMessage("Execute Action"),
        "executedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Executed successfully"),
        "export_to_excel":
            MessageLookupByLibrary.simpleMessage("Export to Excel"),
        "face_id": MessageLookupByLibrary.simpleMessage("Face ID"),
        "failureActions":
            MessageLookupByLibrary.simpleMessage("Failure Actions"),
        "fallbackAssignment":
            MessageLookupByLibrary.simpleMessage("Fallback Assignment"),
        "female": MessageLookupByLibrary.simpleMessage("Female"),
        "fieldAfter":
            MessageLookupByLibrary.simpleMessage("field must be after"),
        "fieldBefore":
            MessageLookupByLibrary.simpleMessage("field must be before"),
        "fieldName": MessageLookupByLibrary.simpleMessage("Field Name"),
        "file_downloaded_successfully": MessageLookupByLibrary.simpleMessage(
            "File downloaded successfully"),
        "file_extention_not_supported": MessageLookupByLibrary.simpleMessage(
            "File extention not supported"),
        "file_is_saved": MessageLookupByLibrary.simpleMessage(
            "The file has been saved successfully"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("Please enter this field"),
        "fillFilterFields": MessageLookupByLibrary.simpleMessage(
            "Please fill in the following fields"),
        "filter_with_count": m24,
        "filters": MessageLookupByLibrary.simpleMessage("Filters"),
        "finger_print": MessageLookupByLibrary.simpleMessage("Finger Print"),
        "finished": m25,
        "firstOne": MessageLookupByLibrary.simpleMessage("First One"),
        "fixed": MessageLookupByLibrary.simpleMessage("Fixed"),
        "font_size": MessageLookupByLibrary.simpleMessage("Font Size"),
        "from": MessageLookupByLibrary.simpleMessage("from"),
        "from_time": m26,
        "gallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "general": MessageLookupByLibrary.simpleMessage("General"),
        "goHome": MessageLookupByLibrary.simpleMessage("Go Home"),
        "goTo": MessageLookupByLibrary.simpleMessage("Go To"),
        "go_to_settings":
            MessageLookupByLibrary.simpleMessage("Go to settings"),
        "grant": MessageLookupByLibrary.simpleMessage("Grant"),
        "greaterThan":
            MessageLookupByLibrary.simpleMessage("field must be greater than"),
        "greater_than": MessageLookupByLibrary.simpleMessage("Greater than"),
        "greater_than_or_equal":
            MessageLookupByLibrary.simpleMessage("Greater than or equal"),
        "group": MessageLookupByLibrary.simpleMessage("Group"),
        "groupName": MessageLookupByLibrary.simpleMessage("Group Name"),
        "group_of_conditions": MessageLookupByLibrary.simpleMessage("Group"),
        "groups": MessageLookupByLibrary.simpleMessage("Groups"),
        "guestUser": MessageLookupByLibrary.simpleMessage("Guest"),
        "gv_no_data":
            MessageLookupByLibrary.simpleMessage("There is no data to display"),
        "happeningNow": MessageLookupByLibrary.simpleMessage("Happening Now"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "historySteps": MessageLookupByLibrary.simpleMessage("History Steps"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "icon": MessageLookupByLibrary.simpleMessage("Icon"),
        "idleLoadingText":
            MessageLookupByLibrary.simpleMessage("Pull up Load more"),
        "idleRefreshText":
            MessageLookupByLibrary.simpleMessage("Pull down Refresh"),
        "in_app": MessageLookupByLibrary.simpleMessage("In app"),
        "inbox": MessageLookupByLibrary.simpleMessage("Inbox"),
        "invalidValue": MessageLookupByLibrary.simpleMessage("Invalid value"),
        "invalid_range":
            MessageLookupByLibrary.simpleMessage("Please enter valid range"),
        "ios_lock_out": MessageLookupByLibrary.simpleMessage(
            "Biometric authentication is disabled. Please lock and unlock your screen to enable it."),
        "ios_lock_out_fallback": MessageLookupByLibrary.simpleMessage(
            "Please use your passcode to unlock the app."),
        "ios_ok_button": MessageLookupByLibrary.simpleMessage("OK"),
        "iris": MessageLookupByLibrary.simpleMessage("Iris"),
        "isEmpty": MessageLookupByLibrary.simpleMessage("Is empty"),
        "isNotEmpty": MessageLookupByLibrary.simpleMessage("Is filled"),
        "isRangeFirstValueError":
            MessageLookupByLibrary.simpleMessage("Please select first value"),
        "isRangeSecondValueError":
            MessageLookupByLibrary.simpleMessage("Please select second value"),
        "is_adhoc_step": MessageLookupByLibrary.simpleMessage("Is adhoc step"),
        "is_main_step": MessageLookupByLibrary.simpleMessage("Is main step"),
        "is_noy_like": MessageLookupByLibrary.simpleMessage("Is not like"),
        "items": MessageLookupByLibrary.simpleMessage("items"),
        "itemsShouldUnique":
            MessageLookupByLibrary.simpleMessage("Items should be uniques"),
        "kanban": MessageLookupByLibrary.simpleMessage("Kanban"),
        "label_Login": MessageLookupByLibrary.simpleMessage("Login"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("Language"),
        "label_birthdate": MessageLookupByLibrary.simpleMessage("Birth date"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("Change language"),
        "label_change_theme":
            MessageLookupByLibrary.simpleMessage("Change theme"),
        "label_chat": MessageLookupByLibrary.simpleMessage("Chats"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "label_email": MessageLookupByLibrary.simpleMessage("Email"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage("Forget password?"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("Full name"),
        "label_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "label_notifications":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "label_password": MessageLookupByLibrary.simpleMessage("Password"),
        "label_phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "label_profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "label_register": MessageLookupByLibrary.simpleMessage("Register"),
        "label_registered_already":
            MessageLookupByLibrary.simpleMessage("Registered already? Login"),
        "label_services": MessageLookupByLibrary.simpleMessage("Services"),
        "label_setting": MessageLookupByLibrary.simpleMessage("Settings"),
        "label_skip_tour":
            MessageLookupByLibrary.simpleMessage("Skip this tour"),
        "label_terms_of_use":
            MessageLookupByLibrary.simpleMessage("I agree to terms of use."),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lastEditBy": MessageLookupByLibrary.simpleMessage("Last edit By"),
        "lastModified": MessageLookupByLibrary.simpleMessage("Last Modified"),
        "leave": MessageLookupByLibrary.simpleMessage("Leave"),
        "leaveComment": MessageLookupByLibrary.simpleMessage("Add comment"),
        "leave_confirmation":
            MessageLookupByLibrary.simpleMessage("Leave Confirmation"),
        "lessThan":
            MessageLookupByLibrary.simpleMessage("field must be less than"),
        "lessThanTime": m27,
        "less_than": MessageLookupByLibrary.simpleMessage("Less than"),
        "less_than_or_equal":
            MessageLookupByLibrary.simpleMessage("Less than or equal"),
        "light_mode": MessageLookupByLibrary.simpleMessage("Light mode"),
        "like": MessageLookupByLibrary.simpleMessage("Like"),
        "list": MessageLookupByLibrary.simpleMessage("List"),
        "loadFailedText": MessageLookupByLibrary.simpleMessage("Load Failed"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading…"),
        "loadmore": MessageLookupByLibrary.simpleMessage("Load More"),
        "location_permissions_are_denied": MessageLookupByLibrary.simpleMessage(
            "Location permissions are denied"),
        "location_permissions_are_denied_forever":
            MessageLookupByLibrary.simpleMessage(
                "Location permissions are permanently denied. Please grant permission to continue"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "mainActionExecutionCondition": MessageLookupByLibrary.simpleMessage(
            "Main Action Execution Condition"),
        "male": MessageLookupByLibrary.simpleMessage("Male"),
        "manager": MessageLookupByLibrary.simpleMessage("Manager"),
        "maps_to": MessageLookupByLibrary.simpleMessage("Maps to"),
        "me": MessageLookupByLibrary.simpleMessage("Me"),
        "metaCurrentSteps":
            MessageLookupByLibrary.simpleMessage("Current Step Owner"),
        "module": MessageLookupByLibrary.simpleMessage("Module"),
        "month": MessageLookupByLibrary.simpleMessage("Month"),
        "monthGreaterThan": MessageLookupByLibrary.simpleMessage(
            "field must be greater than month"),
        "monthLessThan": MessageLookupByLibrary.simpleMessage(
            "field must be less than month number"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "mostChosenSecondaryAction": MessageLookupByLibrary.simpleMessage(
            "Most Chosen Secondary Action"),
        "move": MessageLookupByLibrary.simpleMessage("Move"),
        "moveToStep": MessageLookupByLibrary.simpleMessage("Jump to Step"),
        "my_groups": MessageLookupByLibrary.simpleMessage("My groups"),
        "my_groups_users":
            MessageLookupByLibrary.simpleMessage("My groups users"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "Should be more than 8 and less than 30"),
        "name_duplicated":
            MessageLookupByLibrary.simpleMessage("The name is already used"),
        "need_help": MessageLookupByLibrary.simpleMessage("Need Help?"),
        "new_entry": MessageLookupByLibrary.simpleMessage("New Entry"),
        "new_query": MessageLookupByLibrary.simpleMessage("New query"),
        "new_request": MessageLookupByLibrary.simpleMessage("New Request"),
        "new_update_available":
            MessageLookupByLibrary.simpleMessage("New Update Available"),
        "new_update_available_desc": m28,
        "noEntries":
            MessageLookupByLibrary.simpleMessage("There is no entries"),
        "noMoreText": MessageLookupByLibrary.simpleMessage("No more data"),
        "noMoreTextCustom": m29,
        "noResult": MessageLookupByLibrary.simpleMessage("No Results Found"),
        "noValidPhone":
            MessageLookupByLibrary.simpleMessage("Please check phone number"),
        "no_action_available":
            MessageLookupByLibrary.simpleMessage("No action available"),
        "no_available_services":
            MessageLookupByLibrary.simpleMessage("No available services"),
        "no_comment": MessageLookupByLibrary.simpleMessage("No comments yet"),
        "no_comments_found":
            MessageLookupByLibrary.simpleMessage("No comments found"),
        "no_discussions":
            MessageLookupByLibrary.simpleMessage("No discussions yet"),
        "no_notification":
            MessageLookupByLibrary.simpleMessage("There is no notification"),
        "no_result_found":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "no_similar_fields":
            MessageLookupByLibrary.simpleMessage("No similar fields"),
        "normal": MessageLookupByLibrary.simpleMessage("Normal"),
        "notAuthorized": MessageLookupByLibrary.simpleMessage("Not Authorized"),
        "notExist": MessageLookupByLibrary.simpleMessage("Not Exist"),
        "notHavePermissonToView": MessageLookupByLibrary.simpleMessage(
            "Sorry, you don\'t have permission to view this record. Please contact your system administrator."),
        "notSet": MessageLookupByLibrary.simpleMessage("Not Set"),
        "not_equal": MessageLookupByLibrary.simpleMessage("Not equal"),
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "now": MessageLookupByLibrary.simpleMessage("Now"),
        "number": MessageLookupByLibrary.simpleMessage("Number"),
        "obsolete": MessageLookupByLibrary.simpleMessage("Obsolete"),
        "on_date": MessageLookupByLibrary.simpleMessage("on"),
        "ongoingInbox": MessageLookupByLibrary.simpleMessage("Inbox.Ongoing"),
        "ongoingMyRequests":
            MessageLookupByLibrary.simpleMessage("Requests.Ongoing"),
        "op_in": MessageLookupByLibrary.simpleMessage("In"),
        "op_not_in": MessageLookupByLibrary.simpleMessage("Not in"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "operator": MessageLookupByLibrary.simpleMessage("Operator"),
        "or": MessageLookupByLibrary.simpleMessage("Or"),
        "orgUnitManager":
            MessageLookupByLibrary.simpleMessage("Org Unit Manager"),
        "organizationUnit":
            MessageLookupByLibrary.simpleMessage("Organization Unit"),
        "organizationUnitName":
            MessageLookupByLibrary.simpleMessage("Organization"),
        "organization_information":
            MessageLookupByLibrary.simpleMessage("Organization information"),
        "organization_url":
            MessageLookupByLibrary.simpleMessage("Organization URL"),
        "organization_url_error": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid organization url"),
        "organization_url_hint": MessageLookupByLibrary.simpleMessage(
            "Example-organization.osos.com"),
        "organization_url_subtitle": MessageLookupByLibrary.simpleMessage(
            "please enter your organization url you can contact admin for it"),
        "other": MessageLookupByLibrary.simpleMessage("other"),
        "otherValues": MessageLookupByLibrary.simpleMessage("Other values"),
        "others": MessageLookupByLibrary.simpleMessage("others"),
        "our_gallery": MessageLookupByLibrary.simpleMessage("Our Gallery"),
        "our_mission": MessageLookupByLibrary.simpleMessage("Our Mission"),
        "our_values": MessageLookupByLibrary.simpleMessage("Our Values"),
        "our_vision": MessageLookupByLibrary.simpleMessage("Our Vision"),
        "pageError": MessageLookupByLibrary.simpleMessage("Oops Page Error"),
        "page_zoom": MessageLookupByLibrary.simpleMessage("Page Zoom"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "Should have Upper and Lower case, numbers and special characters"),
        "percentage": MessageLookupByLibrary.simpleMessage("Percentage"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid mobile phone"),
        "phone_verification":
            MessageLookupByLibrary.simpleMessage("Phone verification"),
        "pick": MessageLookupByLibrary.simpleMessage("Photo Library"),
        "pickIcon": MessageLookupByLibrary.simpleMessage("Pick Icon"),
        "please_add_recipients":
            MessageLookupByLibrary.simpleMessage("Please add recipients"),
        "please_contact_admin": MessageLookupByLibrary.simpleMessage(
            "Please contact the administrator."),
        "please_enter_a_unique_name":
            MessageLookupByLibrary.simpleMessage("Please enter a unique name"),
        "please_enter_at_least_three_characters_in": m30,
        "please_enter_ur4digit": MessageLookupByLibrary.simpleMessage(
            "Please enter your 5 digit pin sent on your registered mobile number"),
        "please_fill_in_all_the_required_fields":
            MessageLookupByLibrary.simpleMessage(
                "Please fill in all the required fields"),
        "please_select_a_view":
            MessageLookupByLibrary.simpleMessage("Please select a view"),
        "pointer": MessageLookupByLibrary.simpleMessage("Pointer"),
        "press_again_to_exit":
            MessageLookupByLibrary.simpleMessage("Press again to exit"),
        "previousStepOwner":
            MessageLookupByLibrary.simpleMessage("Previous Step Owner"),
        "previous_steps":
            MessageLookupByLibrary.simpleMessage("Previous steps"),
        "previous_steps_original_owners": MessageLookupByLibrary.simpleMessage(
            "Previous steps original owners"),
        "previous_steps_owners":
            MessageLookupByLibrary.simpleMessage("Previous steps owners"),
        "privacy_terms":
            MessageLookupByLibrary.simpleMessage("Privacy & Terms"),
        "proceedThreshold":
            MessageLookupByLibrary.simpleMessage("Proceed Threshold"),
        "profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "profile_no_join_group_yet": MessageLookupByLibrary.simpleMessage(
            "You have not joined any groups yet"),
        "profile_updated_successfully": MessageLookupByLibrary.simpleMessage(
            "Profile updated successfully"),
        "publish": MessageLookupByLibrary.simpleMessage("Publish"),
        "publish_at": m31,
        "publish_at_relative": m32,
        "publish_between_in": m33,
        "publish_between_in_relative": m34,
        "publish_in": m35,
        "publish_in_relative": m36,
        "query": m37,
        "quickLinks": MessageLookupByLibrary.simpleMessage("Quick Links"),
        "quickServices": MessageLookupByLibrary.simpleMessage("Quick Services"),
        "range": MessageLookupByLibrary.simpleMessage("Range"),
        "reaction_angry": MessageLookupByLibrary.simpleMessage("Angry"),
        "reaction_comment": MessageLookupByLibrary.simpleMessage("Comment"),
        "reaction_comments": m38,
        "reaction_funny": MessageLookupByLibrary.simpleMessage("Haha"),
        "reaction_like": MessageLookupByLibrary.simpleMessage("Like"),
        "reaction_likes": m39,
        "reaction_love": MessageLookupByLibrary.simpleMessage("Love"),
        "reaction_wow": MessageLookupByLibrary.simpleMessage("Wow"),
        "read_less": MessageLookupByLibrary.simpleMessage("Read Less"),
        "read_more": MessageLookupByLibrary.simpleMessage("Read More"),
        "read_successfully":
            MessageLookupByLibrary.simpleMessage("Read Successfully"),
        "reassignOwner": MessageLookupByLibrary.simpleMessage("Reassign Owner"),
        "reassignStepTo":
            MessageLookupByLibrary.simpleMessage("Reassign step to"),
        "recipients": MessageLookupByLibrary.simpleMessage("Recipients"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "refreshCompleteText":
            MessageLookupByLibrary.simpleMessage("Refresh completed"),
        "refreshFailedText":
            MessageLookupByLibrary.simpleMessage("Refresh failed"),
        "refreshingText": MessageLookupByLibrary.simpleMessage("Refreshing…"),
        "relation_no_main_title":
            MessageLookupByLibrary.simpleMessage("No Main Title"),
        "relative": MessageLookupByLibrary.simpleMessage("relative"),
        "remove_from_collection": m40,
        "repeatField": MessageLookupByLibrary.simpleMessage("Repeat Field"),
        "request": MessageLookupByLibrary.simpleMessage("request"),
        "requests": MessageLookupByLibrary.simpleMessage("Requests"),
        "required_field":
            MessageLookupByLibrary.simpleMessage("Required Field"),
        "reset": MessageLookupByLibrary.simpleMessage("Reset"),
        "resetWorkflow":
            MessageLookupByLibrary.simpleMessage("Rest Workflow Step"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "returnToStep": MessageLookupByLibrary.simpleMessage("Back To Step"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "saved_queries": MessageLookupByLibrary.simpleMessage("Saved queries"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "see_more": MessageLookupByLibrary.simpleMessage("See More"),
        "select": MessageLookupByLibrary.simpleMessage("Select"),
        "selectUserType":
            MessageLookupByLibrary.simpleMessage("Select User Type"),
        "select_a_date": MessageLookupByLibrary.simpleMessage("Select a date"),
        "select_a_month":
            MessageLookupByLibrary.simpleMessage("Select a month"),
        "select_a_rang": MessageLookupByLibrary.simpleMessage("Select a range"),
        "select_a_time": MessageLookupByLibrary.simpleMessage("Select a time"),
        "select_a_year": MessageLookupByLibrary.simpleMessage("Select a year"),
        "select_entity": MessageLookupByLibrary.simpleMessage("Select entity"),
        "select_entry": MessageLookupByLibrary.simpleMessage("Select"),
        "selected": MessageLookupByLibrary.simpleMessage("Selected"),
        "selectedRecords": m41,
        "selected_entry_name": m42,
        "selected_item_count": m43,
        "selectionType": MessageLookupByLibrary.simpleMessage("Selection Type"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "send_email": MessageLookupByLibrary.simpleMessage("Send email"),
        "send_notification":
            MessageLookupByLibrary.simpleMessage("Send notification"),
        "serviceCatalog":
            MessageLookupByLibrary.simpleMessage("Service Catalog"),
        "services": MessageLookupByLibrary.simpleMessage("Services"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sign_out": MessageLookupByLibrary.simpleMessage("Sign out"),
        "singleUser": MessageLookupByLibrary.simpleMessage("Single User"),
        "size_more_than_8mg": MessageLookupByLibrary.simpleMessage(
            "File size must be less than 8MB"),
        "size_more_than_mg": m44,
        "size_more_than_mg_error": m45,
        "skip": MessageLookupByLibrary.simpleMessage("skip"),
        "someUsers": MessageLookupByLibrary.simpleMessage("Some Users"),
        "some_condition_met":
            MessageLookupByLibrary.simpleMessage("Some conditions are met"),
        "some_mandatory_fields_are_required_before_taking_an_action_please_contact_the_system_administration":
            MessageLookupByLibrary.simpleMessage(
                "Some mandatory fields are required before taking an action. Please contact the system administration"),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "sort_by": MessageLookupByLibrary.simpleMessage("Sort By"),
        "sort_direction":
            MessageLookupByLibrary.simpleMessage("Sort Direction"),
        "source": MessageLookupByLibrary.simpleMessage("Source"),
        "specific_user_group":
            MessageLookupByLibrary.simpleMessage("Specific User/Group"),
        "specific_users_who_can_access_your_message":
            MessageLookupByLibrary.simpleMessage(
                "Specific users who can access your message"),
        "start_exploring":
            MessageLookupByLibrary.simpleMessage("Start exploring"),
        "start_of_day": MessageLookupByLibrary.simpleMessage("Start of day"),
        "start_of_month":
            MessageLookupByLibrary.simpleMessage("Start of month"),
        "start_of_week": MessageLookupByLibrary.simpleMessage("Start of week"),
        "start_of_year": MessageLookupByLibrary.simpleMessage("Start of year"),
        "start_year": MessageLookupByLibrary.simpleMessage("Start Year"),
        "startedFrom": m46,
        "starts_with": MessageLookupByLibrary.simpleMessage("Starts with"),
        "static": MessageLookupByLibrary.simpleMessage("Static"),
        "status": MessageLookupByLibrary.simpleMessage("Status"),
        "stay": MessageLookupByLibrary.simpleMessage("Stay"),
        "stay_with_all_on_touch":
            MessageLookupByLibrary.simpleMessage("Stay in touch with everyone"),
        "stepName": MessageLookupByLibrary.simpleMessage("Step Name"),
        "stepOwner": MessageLookupByLibrary.simpleMessage("Step Owner"),
        "stepOwnerSourceType":
            MessageLookupByLibrary.simpleMessage("Step Owner Source Type"),
        "stepType": MessageLookupByLibrary.simpleMessage("Step Type"),
        "subject": MessageLookupByLibrary.simpleMessage("Subject"),
        "success_story": MessageLookupByLibrary.simpleMessage("Success Story"),
        "sure_to_close_dialog_without_save":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure to close this page without saving changes?"),
        "table": MessageLookupByLibrary.simpleMessage("Table"),
        "takeOwnerShip": MessageLookupByLibrary.simpleMessage("Take Ownership"),
        "tapToUpload": MessageLookupByLibrary.simpleMessage(
            "Tap to begin upload your files"),
        "tap_to_add": MessageLookupByLibrary.simpleMessage("Tap to add"),
        "tap_to_choose_collection": m47,
        "test": MessageLookupByLibrary.simpleMessage("test"),
        "text_input_hint": MessageLookupByLibrary.simpleMessage("Add text"),
        "the_action_was_executed_successfully":
            MessageLookupByLibrary.simpleMessage(
                "The action was executed successfully"),
        "the_collection_has_no_entries_to_export": m48,
        "the_collection_name_is_duplicated": m49,
        "the_collection_name_is_unique_please_enter_a_new_name": m50,
        "the_file_downloaded_successfully": m51,
        "the_summary_does_not_exist":
            MessageLookupByLibrary.simpleMessage("The summary doesn\'t exist!"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "there_is_no_completed_requests": MessageLookupByLibrary.simpleMessage(
            "There is no completed requests"),
        "there_is_no_ongoing_requests": MessageLookupByLibrary.simpleMessage(
            "There is no ongoing requests"),
        "this_month": MessageLookupByLibrary.simpleMessage("This month"),
        "this_week": MessageLookupByLibrary.simpleMessage("This week"),
        "thresholdType":
            MessageLookupByLibrary.simpleMessage("Proceed Threshold Type"),
        "thresholdValuePercentageInvalid": MessageLookupByLibrary.simpleMessage(
            "Threshold Value should be between 0 and 100"),
        "thresholdValueRequired":
            MessageLookupByLibrary.simpleMessage("Threshold value is required"),
        "timeline": MessageLookupByLibrary.simpleMessage("Timeline"),
        "title": MessageLookupByLibrary.simpleMessage("Title"),
        "to": MessageLookupByLibrary.simpleMessage("To"),
        "toStart": MessageLookupByLibrary.simpleMessage(" to start"),
        "to_end": MessageLookupByLibrary.simpleMessage("to end"),
        "to_time": m52,
        "today": MessageLookupByLibrary.simpleMessage("Today"),
        "translation": MessageLookupByLibrary.simpleMessage("Translation"),
        "tree": MessageLookupByLibrary.simpleMessage("Tree"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("TRY AGAIN"),
        "type": MessageLookupByLibrary.simpleMessage("Type"),
        "type_ur_comment":
            MessageLookupByLibrary.simpleMessage("Type your comment ..."),
        "un_authorize_to_add_request": MessageLookupByLibrary.simpleMessage(
            "You are unauthorized to add a new request from this service"),
        "un_obsolete": MessageLookupByLibrary.simpleMessage("UnObsolete"),
        "un_publish": MessageLookupByLibrary.simpleMessage("Unpublish"),
        "un_publish_at": m53,
        "un_publish_at_relative": m54,
        "un_publish_in": m55,
        "un_publish_in_relative": m56,
        "unarchived": MessageLookupByLibrary.simpleMessage("Unarchive"),
        "unassigned": MessageLookupByLibrary.simpleMessage("Unassigned"),
        "undefined": MessageLookupByLibrary.simpleMessage("Undefined"),
        "uniqueValue": MessageLookupByLibrary.simpleMessage(
            "Field should have unique value"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "update_fields": MessageLookupByLibrary.simpleMessage("Update fields"),
        "update_required":
            MessageLookupByLibrary.simpleMessage("Update Required"),
        "update_required_desc": MessageLookupByLibrary.simpleMessage(
            "Your app is out of date.\nPlease update to the latest version"),
        "update_to": m57,
        "updated_at": MessageLookupByLibrary.simpleMessage("Updated at"),
        "updated_by": MessageLookupByLibrary.simpleMessage("Updated by"),
        "updates": MessageLookupByLibrary.simpleMessage("Updates"),
        "user": MessageLookupByLibrary.simpleMessage("User"),
        "userName": MessageLookupByLibrary.simpleMessage("User Name"),
        "user_collection":
            MessageLookupByLibrary.simpleMessage("User Collection"),
        "v_you_should_upload_at_least": m58,
        "v_you_should_upload_at_most": m59,
        "value": MessageLookupByLibrary.simpleMessage("Value"),
        "valueAdded": MessageLookupByLibrary.simpleMessage("Value Added"),
        "valueChanged": MessageLookupByLibrary.simpleMessage("Value Changed"),
        "valueRemoved": MessageLookupByLibrary.simpleMessage("Value Removed"),
        "version": m60,
        "view": MessageLookupByLibrary.simpleMessage("View"),
        "viewAll": MessageLookupByLibrary.simpleMessage("View All"),
        "view_all": MessageLookupByLibrary.simpleMessage("View all"),
        "view_entity": MessageLookupByLibrary.simpleMessage("View entity"),
        "view_entry": MessageLookupByLibrary.simpleMessage("View entry"),
        "view_type": MessageLookupByLibrary.simpleMessage("View Type"),
        "views": m61,
        "visitView": MessageLookupByLibrary.simpleMessage("Visit view"),
        "week": MessageLookupByLibrary.simpleMessage("Week"),
        "week_ago": MessageLookupByLibrary.simpleMessage("1 week ago"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "welcome_user_subtitle": m62,
        "welcome_user_title": m63,
        "wellDone": MessageLookupByLibrary.simpleMessage("Well Done"),
        "what_you_want_to_add":
            MessageLookupByLibrary.simpleMessage("What you want to add"),
        "who_can_read_this_message":
            MessageLookupByLibrary.simpleMessage("Who can read this message"),
        "who_can_read_your_message":
            MessageLookupByLibrary.simpleMessage("Who can read your message"),
        "who_we_are": MessageLookupByLibrary.simpleMessage("Who We Are"),
        "workflow": MessageLookupByLibrary.simpleMessage("Workflow"),
        "workflowActionMessage":
            MessageLookupByLibrary.simpleMessage("Action has been executed"),
        "write_your_comment":
            MessageLookupByLibrary.simpleMessage("Type your messages ..."),
        "yearGreaterThan": MessageLookupByLibrary.simpleMessage(
            "field must be greater than year"),
        "yearLessThan": MessageLookupByLibrary.simpleMessage(
            "field must be less than year"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "you_do_not_have_any_completed_request":
            MessageLookupByLibrary.simpleMessage(
                "You don\'t have any completed request"),
        "you_do_not_have_any_ongoing_request":
            MessageLookupByLibrary.simpleMessage(
                "You don\'t have any ongoing request"),
        "you_dont_have_access":
            MessageLookupByLibrary.simpleMessage("You don\'t have access"),
        "you_haven_not_created_any_lists_yet":
            MessageLookupByLibrary.simpleMessage(
                "You haven\'t created any lists yet"),
        "you_should_authenticate_to_continue":
            MessageLookupByLibrary.simpleMessage(
                "You should authenticate to continue"),
        "your_location": MessageLookupByLibrary.simpleMessage("Location")
      };
}
