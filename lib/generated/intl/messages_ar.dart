// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(id) =>
      "عند تفعيل التعرف بالمؤشرات الحيوية ${id}، ستتم المطالبة بالتعرف بالمؤشرات الحيوية ${id} عند كل دخول للتطبيق";

  static String m1(name) => "أضف ${name}";

  static String m2(env) => "${Intl.select(env, {
            'yasuat': 'إضافة إلى قائمة',
            'yasprod': 'إضافة إلى قائمة',
            'other': 'إضافة إلى تجميعة',
          })}";

  static String m3(appVersion) => "الإصدار ${appVersion}";

  static String m4(count) =>
      "${Intl.plural(count, zero: ' ', one: 'هل أنت متأكد من أرشفة المدخل؟', other: 'هل أنت متأكد من أرشفة المدخلات؟')}";

  static String m5(env) => "${Intl.select(env, {
            'yasuat': 'هل أنت متأكد من حذف القائمة؟',
            'yasprod': 'هل أنت متأكد من حذف القائمة؟',
            'other': 'هل أنت متأكد من حذف التجميعة؟',
          })}";

  static String m6(env) => "${Intl.select(env, {
            'yasuat': 'هل أنت متأكد من حذف المدخلات من القائمة؟',
            'yasprod': 'هل أنت متأكد من حذف المدخلات من القائمة؟',
            'other': 'هل أنت متأكد من حذف المدخلات من التجميعة؟',
          })}";

  static String m7(env) => "${Intl.select(env, {
            'yasuat': 'هل أنت متأكد من حذف المدخل من القائمة؟',
            'yasprod': 'هل أنت متأكد من حذف المدخل من القائمة؟',
            'other': 'هل أنت متأكد من حذف المدخل من التجميعة؟',
          })}";

  static String m8(id) =>
      "يمكنك تفعيل التعرف بالمؤشرات الحيوية ${id} لتقييد الوصول إلى هذا الجهاز";

  static String m9(env) => "${Intl.select(env, {
            'yasuat': 'اختر قائمة',
            'yasprod': 'اختر قائمة',
            'other': 'اختر تجميعة',
          })}";

  static String m10(step) => "الخطوة ${step} من 2";

  static String m11(env) => "${Intl.select(env, {
            'yasuat': 'أيقونة القائمة',
            'yasprod': 'أيقونة القائمة',
            'other': 'أيقونة التجميعة',
          })}";

  static String m12(env) => "${Intl.select(env, {
            'yasuat': 'اسم القائمة',
            'yasprod': 'اسم القائمة',
            'other': 'اسم التجميعة',
          })}";

  static String m13(env) => "${Intl.select(env, {
            'yasuat': 'إنشاء قائمة جديدة',
            'yasprod': 'إنشاء قائمة جديدة',
            'other': 'إنشاء تجميعة جديدة',
          })}";

  static String m14(date) => "تم الإنشاء في ${date}";

  static String m15(date) => "تم الإنشاء منذ ${date}";

  static String m16(env) => "${Intl.select(env, {
            'yasuat': 'قائمة',
            'yasprod': 'قائمة',
            'other': 'تجميعة',
          })}";

  static String m17(id) =>
      "عند إلغاء تفعيل التعرف بالمؤشرات الحيوية ${id}، لن يتم المطالبة بالتعرف بالمؤشرات الحيوية ${id} عند كل دخول للتطبيق";

  static String m18(env) => "${Intl.select(env, {
            'yasuat': 'حذف القائمة',
            'yasprod': 'حذف القائمة',
            'other': 'حذف التجميعة',
          })}";

  static String m19(name) => "جار تحميل الملف ${name}";

  static String m20(env) => "${Intl.select(env, {
            'yasuat': 'تعديل القائمة',
            'yasprod': 'تعديل القائمة',
            'other': 'تعديل التجميعة',
          })}";

  static String m21(name) => "أدخل ${name}";

  static String m22(count) => "${count} كيان";

  static String m23(count) =>
      "${Intl.plural(count, zero: '${count} مدخلات', one: 'مُدخل واحد', other: '${count} مُدخلات')}";

  static String m24(count) =>
      "${Intl.plural(count, zero: ' ', one: '${count} مرشح', other: '${count} مرشحات')}";

  static String m25(time) => "تم الإنتهاء ${time}";

  static String m26(time) => "من ${time}";

  static String m27(time) => "أقل من ${time}";

  static String m28(versionNumber, appName) =>
      "إصدار جديد ${versionNumber} من التطبيق ${appName} أصبح متوفراً!";

  static String m29(name) => "لا يوجد المزيد من ${name}";

  static String m30(languages) => "الرجاء إدخال ٣ أحرف في ${languages}";

  static String m31(date) => "تم النشر في ${date}";

  static String m32(date) => "تم النشر منذ ${date}";

  static String m33(date, date2) => "سيتم النشر بين ${date} و ${date2}";

  static String m34(date, date2) =>
      "سيتم النشر خلال ${date} والحجب خلال ${date2}";

  static String m35(date) => "سيتم النشر في ${date}";

  static String m36(date) => "سيتم النشر خلال ${date}";

  static String m37(count) =>
      "${Intl.plural(count, zero: ' ', one: '${count} مرشح', other: '${count} مرشحات')}";

  static String m38(count) =>
      "${Intl.plural(count, one: '1 تعليق', other: '${count} تعليقات')}";

  static String m39(count) =>
      "${Intl.plural(count, one: 'انت وشخص آخر', other: 'أنت و ${count} آخرون')}";

  static String m40(env) => "${Intl.select(env, {
            'yasuat': 'حذف من القائمة',
            'yasprod': 'حذف من القائمة',
            'other': 'حذف من التجميعة',
          })}";

  static String m41(number) => "${number}سجلات محددة";

  static String m42(name) => "${name} محددة";

  static String m43(count) =>
      "${Intl.plural(count, one: '${count} عنصر محدد', other: '${count} عناصر محددة')}";

  static String m44(MB) =>
      "لن يتم إضافة الملفات التي حجمها أكثر من ${MB} ميحابيت";

  static String m45(MB, files) =>
      "يجب أن تكون حجم الملفات التالية أقل من ${MB} ميحابيت, ${files}";

  static String m46(time) => "تم البدء ${time}";

  static String m47(env) => "${Intl.select(env, {
            'yasuat': 'انقر لاختيار قائمة',
            'yasprod': 'انقر لاختيار قائمة',
            'other': 'انقر لاختيار تجميعة',
          })}";

  static String m48(env) => "${Intl.select(env, {
            'yasuat': 'القائمة لا تحتوي أية مدخلات للتصدير',
            'yasprod': 'القائمة لا تحتوي أية مدخلات للتصدير',
            'other': 'التجميعة لا تحتوي أية مدخلات للتصدير',
          })}";

  static String m49(env) => "${Intl.select(env, {
            'yasuat': 'اسم القائمة مكرر',
            'yasprod': 'اسم القائمة مكرر',
            'other': 'اسم التجميعة مكرر',
          })}";

  static String m50(env) => "${Intl.select(env, {
            'yasuat': 'اسم القائمة هو فريد، يرجى إدخال اسم جديد',
            'yasprod': 'اسم القائمة هو فريد، يرجى إدخال اسم جديد',
            'other': 'اسم التجميعة هو فريد، يرجى إدخال اسم جديد',
          })}";

  static String m51(name) => "تم تحميل الملف ${name} بنجاح";

  static String m52(time) => " إلى ${time}";

  static String m53(date) => "تم الحجب في ${date}";

  static String m54(date) => "تم الحجب منذ ${date}";

  static String m55(date) => "سيتم الحجب في ${date}";

  static String m56(date) => "سيتم الحجب خلال ${date}";

  static String m57(appVersion) => "التحديث إلى ${appVersion}";

  static String m58(count) =>
      "${Intl.plural(count, other: 'يجب أن تقوم برفع ${count} من الملفات على الأقل')}";

  static String m59(count) =>
      "${Intl.plural(count, other: 'يجب أن تقوم برفع ${count} من الملفات على الأكثر')}";

  static String m60(version) => "اصدار ${version}";

  static String m61(count) =>
      "${Intl.plural(count, one: '1 معرض', other: '${count} معارض')}";

  static String m62(Env) => "مرحباً بك في ${Env}!";

  static String m63(name) => "مرحبا ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل العنوان"),
        "Image_is_saved":
            MessageLookupByLibrary.simpleMessage("تم حفظ الصورة بنجاح"),
        "a_recipient": MessageLookupByLibrary.simpleMessage("مستلم"),
        "abilityToChange":
            MessageLookupByLibrary.simpleMessage("القدرة على تغيير المستخدم"),
        "about": MessageLookupByLibrary.simpleMessage("عن التطبيق"),
        "about_org": MessageLookupByLibrary.simpleMessage("عن المؤسسة"),
        "access_denied": MessageLookupByLibrary.simpleMessage(
            "تم رفض الوصول بشكل دائم. يرجى اعطاء الصلاحية المناسبة لإتمام العملية"),
        "action": MessageLookupByLibrary.simpleMessage("اجراء"),
        "actionRequired": MessageLookupByLibrary.simpleMessage("الإجراء مطلوب"),
        "activate_bio_id": MessageLookupByLibrary.simpleMessage(
            "تفعيل التعرف بالمؤشرات الحيوية"),
        "activate_bio_id_desc": m0,
        "active": MessageLookupByLibrary.simpleMessage("فعال"),
        "adHoc": MessageLookupByLibrary.simpleMessage("أضف خطوة مخصصة"),
        "add": MessageLookupByLibrary.simpleMessage("أضف"),
        "addAdHocStep": MessageLookupByLibrary.simpleMessage("أضف خطوة مخصصة"),
        "addMore": MessageLookupByLibrary.simpleMessage("اضافة المزيد"),
        "addNewEntry": MessageLookupByLibrary.simpleMessage("أضف مدخل جديد"),
        "addNewRecord": MessageLookupByLibrary.simpleMessage("اضافة مدخل جديد"),
        "addRecipient": MessageLookupByLibrary.simpleMessage("أضف مستلم"),
        "add_a": m1,
        "add_condition": MessageLookupByLibrary.simpleMessage("إضافة شرط"),
        "add_condition_or_group":
            MessageLookupByLibrary.simpleMessage("إضافة شرط أو مجموعة شروط"),
        "add_entity": MessageLookupByLibrary.simpleMessage("إدخال جديد"),
        "add_entry_link":
            MessageLookupByLibrary.simpleMessage("إضافة رابط الخاص بالمدُخل"),
        "add_group": MessageLookupByLibrary.simpleMessage("إضافة مجموعة شروط"),
        "add_new_entry":
            MessageLookupByLibrary.simpleMessage("إضافة مدخل جديد"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("إضافة عنصر جديد"),
        "add_to_collection": m2,
        "additionalApproval":
            MessageLookupByLibrary.simpleMessage("موافقة إضافية"),
        "additionalInformation":
            MessageLookupByLibrary.simpleMessage("معلومات إضافية"),
        "adhoc_steps": MessageLookupByLibrary.simpleMessage("الخطوات الإضافية"),
        "all": MessageLookupByLibrary.simpleMessage("الكل"),
        "allUsers": MessageLookupByLibrary.simpleMessage("جميع المستخدمين"),
        "allViews": MessageLookupByLibrary.simpleMessage("جميع المشاهد"),
        "all_condition_met":
            MessageLookupByLibrary.simpleMessage("كل الشروط محققة"),
        "all_entries": MessageLookupByLibrary.simpleMessage("جميع المدخلات"),
        "all_items_selected":
            MessageLookupByLibrary.simpleMessage("كل العناصر محددة"),
        "all_notification":
            MessageLookupByLibrary.simpleMessage("جميع الإشعارات"),
        "all_reaction": MessageLookupByLibrary.simpleMessage("الكل"),
        "all_variables_should_be_mapped":
            MessageLookupByLibrary.simpleMessage("يجب تعيين جميع المتغيرات"),
        "alreadyExist": MessageLookupByLibrary.simpleMessage("موجود بالفعل"),
        "and": MessageLookupByLibrary.simpleMessage("و"),
        "android_biometric_hint":
            MessageLookupByLibrary.simpleMessage("التحقق من الهوية"),
        "android_biometric_not_recognized":
            MessageLookupByLibrary.simpleMessage("غير معروف. حاول مرة أخرى."),
        "android_biometric_required_title":
            MessageLookupByLibrary.simpleMessage("التحقق من الهوية مطلوب"),
        "android_biometric_success":
            MessageLookupByLibrary.simpleMessage("نجاح"),
        "android_cancel_button": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "android_device_credentials_required_title":
            MessageLookupByLibrary.simpleMessage("بيانات اعتماد الجهاز مطلوبة"),
        "android_device_credentials_setup_description":
            MessageLookupByLibrary.simpleMessage("بيانات اعتماد الجهاز مطلوبة"),
        "android_sign_in_title":
            MessageLookupByLibrary.simpleMessage("المصادقة مطلوبة"),
        "announcements": MessageLookupByLibrary.simpleMessage("الإعلانات"),
        "anonymous_user": MessageLookupByLibrary.simpleMessage("مستخدم مجهول"),
        "any_one_can_access_your_message":
            MessageLookupByLibrary.simpleMessage("يمكن لأي شخص مشاهدة رسالتك"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "app_continue": MessageLookupByLibrary.simpleMessage("متابعة"),
        "app_version": m3,
        "applied_sort": MessageLookupByLibrary.simpleMessage("الفرز حسب"),
        "apply": MessageLookupByLibrary.simpleMessage("طلب"),
        "archive": MessageLookupByLibrary.simpleMessage("أرشفة"),
        "archived": MessageLookupByLibrary.simpleMessage("مؤرشف"),
        "are_you_sure_you_want_to_archive_entry": m4,
        "are_you_sure_you_want_to_delete_collection": m5,
        "are_you_sure_you_want_to_remove_the_entries_from_the_collection": m6,
        "are_you_sure_you_want_to_remove_the_entry_from_the_collection": m7,
        "asc": MessageLookupByLibrary.simpleMessage("تصاعدياً"),
        "ascending": MessageLookupByLibrary.simpleMessage("تصاعدياً"),
        "atLeast": MessageLookupByLibrary.simpleMessage("أضف على الأقل"),
        "atMost": MessageLookupByLibrary.simpleMessage("من فضل اضف على الأكثر"),
        "attachDoc": MessageLookupByLibrary.simpleMessage("أرفق المستند"),
        "attachFile": MessageLookupByLibrary.simpleMessage("أرفق ملف"),
        "attachImage": MessageLookupByLibrary.simpleMessage("أرفق صورة"),
        "attachVideo": MessageLookupByLibrary.simpleMessage("أرفق الفيديو"),
        "auth_required":
            MessageLookupByLibrary.simpleMessage("المصادقة مطلوبة"),
        "back": MessageLookupByLibrary.simpleMessage("رجوع"),
        "badge": MessageLookupByLibrary.simpleMessage("بطاقات"),
        "bcc": MessageLookupByLibrary.simpleMessage("نسخة مخفية الوجهة"),
        "be_the_first_add_comment":
            MessageLookupByLibrary.simpleMessage("كن أول من يضيف تعليقاً"),
        "be_the_first_add_discussion":
            MessageLookupByLibrary.simpleMessage("كن أول من يضيف نقاشاً"),
        "before_taking_any_action_you_must_edit_and_fill_in_the_required_fields":
            MessageLookupByLibrary.simpleMessage(
                "قبل اتخاذ أي إجراء، يجب تعديل المدخل وملء الحقول الإجبارية"),
        "bio_id":
            MessageLookupByLibrary.simpleMessage("التعرف بالمؤشرات الحيوية"),
        "bio_id_hint": m8,
        "birthday": MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
        "body": MessageLookupByLibrary.simpleMessage("النص"),
        "brightness": MessageLookupByLibrary.simpleMessage("السطوع"),
        "browse": MessageLookupByLibrary.simpleMessage("تصفح"),
        "by": MessageLookupByLibrary.simpleMessage("بواسطة"),
        "calender": MessageLookupByLibrary.simpleMessage("تقويم"),
        "camera": MessageLookupByLibrary.simpleMessage("التقط صورة"),
        "canLoadingText":
            MessageLookupByLibrary.simpleMessage("حرر لتحميل المزيد"),
        "canRefreshText": MessageLookupByLibrary.simpleMessage("حرر للتحديث"),
        "canTwoLevelText": MessageLookupByLibrary.simpleMessage(""),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "categoryNotSet":
            MessageLookupByLibrary.simpleMessage("التصنيف غير محدد"),
        "cc": MessageLookupByLibrary.simpleMessage("نسخة إلى"),
        "channel_type": MessageLookupByLibrary.simpleMessage("نوع القناة"),
        "characters": MessageLookupByLibrary.simpleMessage("حرف"),
        "charts": MessageLookupByLibrary.simpleMessage("المخططات"),
        "choose_actions":
            MessageLookupByLibrary.simpleMessage("اختر الإجراءات"),
        "choose_at_least_one_action":
            MessageLookupByLibrary.simpleMessage("اختر إجراء واحد على الأقل"),
        "choose_collection": m9,
        "choose_lang_org_step": m10,
        "choose_step": MessageLookupByLibrary.simpleMessage("اختر الخطوة"),
        "clear": MessageLookupByLibrary.simpleMessage("مسح"),
        "close": MessageLookupByLibrary.simpleMessage("إغلاق"),
        "collection_icon": m11,
        "collection_name": m12,
        "collections": MessageLookupByLibrary.simpleMessage("القوائم"),
        "comingSoon": MessageLookupByLibrary.simpleMessage("قريبا"),
        "comment": MessageLookupByLibrary.simpleMessage("تعليق"),
        "completedInbox":
            MessageLookupByLibrary.simpleMessage("صندوق الوارد.المكتملة"),
        "completedMyRequests":
            MessageLookupByLibrary.simpleMessage("الطلبات.المكتملة"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "من فضلك ادخل كلمة المرورمتطابق"),
        "confirm_delete_query": MessageLookupByLibrary.simpleMessage(
            "هل أنت متأكد من رغبتك في حذف الاستعلام؟ سيتم حذفه نهائيًا ولن يكون بإمكانك استرجاعه"),
        "contains": MessageLookupByLibrary.simpleMessage("يحتوي"),
        "content": MessageLookupByLibrary.simpleMessage("المحتوى"),
        "continueAsGuest":
            MessageLookupByLibrary.simpleMessage("المتابعة كزائر"),
        "counters": MessageLookupByLibrary.simpleMessage("العدادات"),
        "create": MessageLookupByLibrary.simpleMessage("إنشاء"),
        "create_new_collection": m13,
        "created_at": m14,
        "created_at_meta":
            MessageLookupByLibrary.simpleMessage("تاريخ الإنشاء"),
        "created_at_relative": m15,
        "created_by": MessageLookupByLibrary.simpleMessage("الإنشاء بواسطة"),
        "current_step": MessageLookupByLibrary.simpleMessage("الخطوة الحالية"),
        "current_step_original_owner": MessageLookupByLibrary.simpleMessage(
            "المالك الأساسي للخطوة الحالية"),
        "current_step_owner":
            MessageLookupByLibrary.simpleMessage("مالك الخطوة الحالية"),
        "current_step_received_date":
            MessageLookupByLibrary.simpleMessage("تاريخ الوصول للخطوة الحالية"),
        "custom_variables":
            MessageLookupByLibrary.simpleMessage("متغيرات مخصصة"),
        "dark_mode": MessageLookupByLibrary.simpleMessage("الوضع المظلم"),
        "dashboard": MessageLookupByLibrary.simpleMessage("لوحة التحكم"),
        "dataCollection": m16,
        "day": MessageLookupByLibrary.simpleMessage("يوم"),
        "day_ago": MessageLookupByLibrary.simpleMessage("منذ يوم"),
        "deactivate_bio_id": MessageLookupByLibrary.simpleMessage(
            "إلغاء تفعيل التعرف بالمؤشرات الحيوية"),
        "deactivate_bio_id_desc": m17,
        "defaultt": MessageLookupByLibrary.simpleMessage("الإفتراضي"),
        "delete": MessageLookupByLibrary.simpleMessage("حذف"),
        "delete_collection": m18,
        "desc": MessageLookupByLibrary.simpleMessage("تنازلياً"),
        "descending": MessageLookupByLibrary.simpleMessage("تنازلياً"),
        "description": MessageLookupByLibrary.simpleMessage("الوصف"),
        "details": MessageLookupByLibrary.simpleMessage("التفاصيل"),
        "dialog_tittle_delete_query":
            MessageLookupByLibrary.simpleMessage("حذف الاستعلام"),
        "directManager":
            MessageLookupByLibrary.simpleMessage("المدير المباشر لمالك الخطوة"),
        "discussions": MessageLookupByLibrary.simpleMessage("المناقشات"),
        "displayMatching":
            MessageLookupByLibrary.simpleMessage("لعرض المدخلات المطابقة"),
        "display_option": MessageLookupByLibrary.simpleMessage("خيارات العرض"),
        "does_not_contain": MessageLookupByLibrary.simpleMessage("لا يحتوي"),
        "does_not_start_with":
            MessageLookupByLibrary.simpleMessage("لا يبدأ ب"),
        "done": MessageLookupByLibrary.simpleMessage("تم"),
        "downloading_file": m19,
        "draft": MessageLookupByLibrary.simpleMessage("مسودة"),
        "duration_execution":
            MessageLookupByLibrary.simpleMessage("فترة التنفيذ"),
        "dynamic": MessageLookupByLibrary.simpleMessage("متغير"),
        "dynamic_value": MessageLookupByLibrary.simpleMessage("قيمة متغيرة"),
        "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
        "edit_collection": m20,
        "edit_entry": MessageLookupByLibrary.simpleMessage("تعديل المدخل"),
        "edit_profile":
            MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
        "edit_profile_appbar_title":
            MessageLookupByLibrary.simpleMessage("تعديل الملف الشخصي"),
        "edit_profile_change_photo":
            MessageLookupByLibrary.simpleMessage("تغيير الصورة"),
        "edit_profile_update_button":
            MessageLookupByLibrary.simpleMessage("تحديث"),
        "edit_query": MessageLookupByLibrary.simpleMessage("تعديل الاستعلام"),
        "edit_query_desc": MessageLookupByLibrary.simpleMessage(
            "هل تريد حفظ التعديلات الجديدة؟علماً أنه سيؤدي حفظها إلى إلغاء التعديلات السابقة"),
        "edit_required_fields":
            MessageLookupByLibrary.simpleMessage("تعديل الحقول المطلوبة"),
        "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "emptyList": MessageLookupByLibrary.simpleMessage("مصفوفة فارغة"),
        "emptyRecords": MessageLookupByLibrary.simpleMessage("لايوجد نتائج"),
        "endWorkflow":
            MessageLookupByLibrary.simpleMessage("خطوة نهاية سير العمل"),
        "end_year": MessageLookupByLibrary.simpleMessage("سنة النهاية"),
        "enter": MessageLookupByLibrary.simpleMessage("أدخل"),
        "enterNumber": MessageLookupByLibrary.simpleMessage("أدخل الرقم"),
        "enter_a": m21,
        "enter_query_name":
            MessageLookupByLibrary.simpleMessage("أدخل اسم الاستعلام"),
        "enter_user_or_group":
            MessageLookupByLibrary.simpleMessage("اختر مستخدم أو مجموعة"),
        "entity": MessageLookupByLibrary.simpleMessage("الكيان"),
        "entity_list": MessageLookupByLibrary.simpleMessage("قائمة الكيانات"),
        "entity_metadata": MessageLookupByLibrary.simpleMessage("أوصاف الكيان"),
        "entries": MessageLookupByLibrary.simpleMessage("المدخلات"),
        "entries_count": m22,
        "entry": MessageLookupByLibrary.simpleMessage("مُدخل"),
        "entry_count": m23,
        "entry_fields": MessageLookupByLibrary.simpleMessage("حقول المدخل"),
        "entry_metadata": MessageLookupByLibrary.simpleMessage("أوصاف المدخل"),
        "entry_of_view": MessageLookupByLibrary.simpleMessage("المعرض"),
        "equal": MessageLookupByLibrary.simpleMessage("يساوي"),
        "errorHappened": MessageLookupByLibrary.simpleMessage("حدث خطأ"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("طلب غير صالح"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نتائج"),
        "error_Timeout_Error":
            MessageLookupByLibrary.simpleMessage("انتهت المدة"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("غير مصرح"),
        "error_Unauthorized_to_edit_field":
            MessageLookupByLibrary.simpleMessage(
                "غير مصرح لك لتعديل هذا الحقل"),
        "error_cancel_token":
            MessageLookupByLibrary.simpleMessage("تم مقاطعة الاتصال"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("كلمة المرور غير مطابقة"),
        "error_conflict": MessageLookupByLibrary.simpleMessage("خطأ تعارض"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "حصل خطأ اثناء اتصالك بالشبكة"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("تم فقد الاتصال"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("ليس لديك الصلاحية"),
        "error_general":
            MessageLookupByLibrary.simpleMessage("حصل خطأ غير متوقع"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("حصل خطأ في السيرفر"),
        "error_publish_unpublish_post_schedule":
            MessageLookupByLibrary.simpleMessage(
                "لا يمكنك نشر/إلغاء نشر حسب التاريخ المجدول."),
        "error_socket":
            MessageLookupByLibrary.simpleMessage("تأكد من إتصالك بالانترنيت"),
        "event": MessageLookupByLibrary.simpleMessage("حدث"),
        "eventIsEnded": MessageLookupByLibrary.simpleMessage("تم إنهاء الحدث"),
        "event_ended": MessageLookupByLibrary.simpleMessage("منتهي"),
        "event_ongoing": MessageLookupByLibrary.simpleMessage("يحدث الآن"),
        "event_upcoming": MessageLookupByLibrary.simpleMessage("لم يبدأ"),
        "events": MessageLookupByLibrary.simpleMessage("الأحداث"),
        "everyone": MessageLookupByLibrary.simpleMessage("الجميع"),
        "execute": MessageLookupByLibrary.simpleMessage("نفّذ"),
        "execute_action": MessageLookupByLibrary.simpleMessage("نفذ إجراء"),
        "executedSuccessfully":
            MessageLookupByLibrary.simpleMessage("تم التنفيذ بنجاح"),
        "export_to_excel":
            MessageLookupByLibrary.simpleMessage("تصدير إلى ملف اكسل"),
        "face_id": MessageLookupByLibrary.simpleMessage("بصمة الوجه"),
        "failureActions": MessageLookupByLibrary.simpleMessage("إجراءات الفشل"),
        "fallbackAssignment":
            MessageLookupByLibrary.simpleMessage("التعيين الاحتياطي"),
        "female": MessageLookupByLibrary.simpleMessage("أنثى"),
        "fieldAfter":
            MessageLookupByLibrary.simpleMessage("يجب أن يكون الحقل اكثر من "),
        "fieldBefore":
            MessageLookupByLibrary.simpleMessage("يجب أن يكون الحقل اقل من "),
        "fieldName": MessageLookupByLibrary.simpleMessage("اسم الحقل"),
        "file_downloaded_successfully":
            MessageLookupByLibrary.simpleMessage("تم تحميل الملف بنجاح"),
        "file_extention_not_supported":
            MessageLookupByLibrary.simpleMessage("إمتداد الملف غير مدعوم"),
        "file_is_saved":
            MessageLookupByLibrary.simpleMessage("تم حفظ الملف بنجاح"),
        "fillField": MessageLookupByLibrary.simpleMessage("الرجاء ملء الحقل"),
        "fillFilterFields":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال الحقول التالية"),
        "filter_with_count": m24,
        "filters": MessageLookupByLibrary.simpleMessage("المرشحات"),
        "finger_print": MessageLookupByLibrary.simpleMessage("بصمة الأصبع"),
        "finished": m25,
        "firstOne": MessageLookupByLibrary.simpleMessage("أول واحد"),
        "fixed": MessageLookupByLibrary.simpleMessage("ثابت"),
        "font_size": MessageLookupByLibrary.simpleMessage("حجم الخط"),
        "from": MessageLookupByLibrary.simpleMessage("من"),
        "from_time": m26,
        "gallery": MessageLookupByLibrary.simpleMessage("استوديو"),
        "gender": MessageLookupByLibrary.simpleMessage("الجنس"),
        "general": MessageLookupByLibrary.simpleMessage("عام"),
        "goHome": MessageLookupByLibrary.simpleMessage("الذهاب للرئيسية"),
        "goTo": MessageLookupByLibrary.simpleMessage("الذهاب إلى"),
        "go_to_settings":
            MessageLookupByLibrary.simpleMessage("الذهاب إلى الإعدادات"),
        "grant": MessageLookupByLibrary.simpleMessage("منح"),
        "greaterThan":
            MessageLookupByLibrary.simpleMessage("يجب أن يكون الحقل أكبر من"),
        "greater_than": MessageLookupByLibrary.simpleMessage("أكبر من"),
        "greater_than_or_equal":
            MessageLookupByLibrary.simpleMessage("أكبر أو يساوي"),
        "group": MessageLookupByLibrary.simpleMessage("مجموعة"),
        "groupName": MessageLookupByLibrary.simpleMessage("اسم المجموعة"),
        "group_of_conditions":
            MessageLookupByLibrary.simpleMessage("مجموعة شروط"),
        "groups": MessageLookupByLibrary.simpleMessage("المجموعات"),
        "guestUser": MessageLookupByLibrary.simpleMessage("زائر"),
        "gv_no_data":
            MessageLookupByLibrary.simpleMessage("لاتوجد بيانات ليتم عرضها"),
        "happeningNow": MessageLookupByLibrary.simpleMessage("يحدث الآن"),
        "history": MessageLookupByLibrary.simpleMessage("السجل"),
        "historySteps": MessageLookupByLibrary.simpleMessage("سجل الخطوات"),
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "icon": MessageLookupByLibrary.simpleMessage("الأيقونة"),
        "idleLoadingText":
            MessageLookupByLibrary.simpleMessage("اسحب للأعلى لتحميل المزيد"),
        "idleRefreshText":
            MessageLookupByLibrary.simpleMessage("اسحب للأسفل للتحديث"),
        "in_app": MessageLookupByLibrary.simpleMessage("داخل التطبيق"),
        "inbox": MessageLookupByLibrary.simpleMessage("صندوق الوارد"),
        "invalidValue":
            MessageLookupByLibrary.simpleMessage("القيمة غير صالحة"),
        "invalid_range": MessageLookupByLibrary.simpleMessage(
            "يجب إدخال قيمة على شكل مجال صحيح"),
        "ios_lock_out": MessageLookupByLibrary.simpleMessage(
            "تم تعطيل المصادقة الحيوية. الرجاء قفل وفتح الشاشة لتمكينها."),
        "ios_lock_out_fallback": MessageLookupByLibrary.simpleMessage(
            "الرجاء استخدام رمزك السري لفتح التطبيق."),
        "ios_ok_button": MessageLookupByLibrary.simpleMessage("حسناً"),
        "iris": MessageLookupByLibrary.simpleMessage("بصمة العين"),
        "isEmpty": MessageLookupByLibrary.simpleMessage("فارغ"),
        "isNotEmpty": MessageLookupByLibrary.simpleMessage("مملوء"),
        "isRangeFirstValueError":
            MessageLookupByLibrary.simpleMessage("الرجاء اختيار القيمة الأولى"),
        "isRangeSecondValueError": MessageLookupByLibrary.simpleMessage(
            "الرجاء اختيار القيمة الثانية"),
        "is_adhoc_step": MessageLookupByLibrary.simpleMessage("هي خطوة إضافية"),
        "is_main_step": MessageLookupByLibrary.simpleMessage("هي خطوة أساسية"),
        "is_noy_like": MessageLookupByLibrary.simpleMessage("ليس مثل"),
        "items": MessageLookupByLibrary.simpleMessage("عناصر"),
        "itemsShouldUnique":
            MessageLookupByLibrary.simpleMessage("العناصر يجيب ان تكون مختلفة"),
        "kanban": MessageLookupByLibrary.simpleMessage("لوحة المهام"),
        "label_Login": MessageLookupByLibrary.simpleMessage("تسجيل دخول"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "label_birthdate":
            MessageLookupByLibrary.simpleMessage("تاريخ الميلاد"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
        "label_change_theme":
            MessageLookupByLibrary.simpleMessage("تغيير السمة"),
        "label_chat": MessageLookupByLibrary.simpleMessage("الدردشة"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("اختيار اللغة"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("تأكيد كلمة المرور"),
        "label_email": MessageLookupByLibrary.simpleMessage("البريد الاكتروني"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage("تغيير كلمة المرور؟"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
        "label_logout": MessageLookupByLibrary.simpleMessage("تسجيل خروج"),
        "label_notifications":
            MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "label_password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "label_phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "label_profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "label_register":
            MessageLookupByLibrary.simpleMessage("تسجيل حساب جديد"),
        "label_registered_already": MessageLookupByLibrary.simpleMessage(
            "لديك حساب مسبقا؟ تسجيل الدخول"),
        "label_services": MessageLookupByLibrary.simpleMessage("الخدمات"),
        "label_setting": MessageLookupByLibrary.simpleMessage("الإعدادات"),
        "label_skip_tour": MessageLookupByLibrary.simpleMessage("تخطي"),
        "label_terms_of_use":
            MessageLookupByLibrary.simpleMessage("أوافق على سياسة الخصوصية."),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "lastEditBy": MessageLookupByLibrary.simpleMessage("آخر تعديل بواسطة"),
        "lastModified": MessageLookupByLibrary.simpleMessage("آخر تعديل"),
        "leave": MessageLookupByLibrary.simpleMessage("المغادرة"),
        "leaveComment": MessageLookupByLibrary.simpleMessage("أضف تعليقاً"),
        "leave_confirmation":
            MessageLookupByLibrary.simpleMessage("تاكيد المغادرة"),
        "lessThan":
            MessageLookupByLibrary.simpleMessage("يجب أن يكون الحقل أقل من"),
        "lessThanTime": m27,
        "less_than": MessageLookupByLibrary.simpleMessage("أقل من"),
        "less_than_or_equal":
            MessageLookupByLibrary.simpleMessage("أقل أو يساوي"),
        "light_mode": MessageLookupByLibrary.simpleMessage("وضع المضىء"),
        "like": MessageLookupByLibrary.simpleMessage("مثل"),
        "list": MessageLookupByLibrary.simpleMessage("قائمة"),
        "loadFailedText":
            MessageLookupByLibrary.simpleMessage("فشل في التحميل"),
        "loadingText": MessageLookupByLibrary.simpleMessage("تحميل…"),
        "loadmore": MessageLookupByLibrary.simpleMessage("تحميل المزيد"),
        "location_permissions_are_denied":
            MessageLookupByLibrary.simpleMessage("تم رفض إذن الوصول للموقع"),
        "location_permissions_are_denied_forever":
            MessageLookupByLibrary.simpleMessage(
                "إذن الوصول للموقع تم رفضه بشكل دائم، الرجاء منح الإذن للمتابعة"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل البريد صحيحا"),
        "mainActionExecutionCondition":
            MessageLookupByLibrary.simpleMessage("شرط تنفيذ الإجراء الرئيسي"),
        "male": MessageLookupByLibrary.simpleMessage("ذكر"),
        "manager": MessageLookupByLibrary.simpleMessage("مدير"),
        "maps_to": MessageLookupByLibrary.simpleMessage("يتطابق مع"),
        "me": MessageLookupByLibrary.simpleMessage("أنا"),
        "metaCurrentSteps":
            MessageLookupByLibrary.simpleMessage("مالك الخطوة الحالية"),
        "module": MessageLookupByLibrary.simpleMessage("الوحدة"),
        "month": MessageLookupByLibrary.simpleMessage("شهر"),
        "monthGreaterThan": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون الحقل أكبر من شهر"),
        "monthLessThan": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون الحقل أقل من شهر"),
        "more": MessageLookupByLibrary.simpleMessage("المزيد"),
        "mostChosenSecondaryAction": MessageLookupByLibrary.simpleMessage(
            "الإجراء الثانوي الأكثر اختياراً"),
        "move": MessageLookupByLibrary.simpleMessage("انقل"),
        "moveToStep":
            MessageLookupByLibrary.simpleMessage("الإنتقال الي الخطوة التالية"),
        "my_groups": MessageLookupByLibrary.simpleMessage("مجموعاتي"),
        "my_groups_users":
            MessageLookupByLibrary.simpleMessage("مستخدمي مجموعاتي"),
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون أكثر من ٨ احرف واقل من ٣٠"),
        "name_duplicated":
            MessageLookupByLibrary.simpleMessage("الاسم مستخدم بالفعل"),
        "need_help": MessageLookupByLibrary.simpleMessage("تحتاج مساعدة؟"),
        "new_entry": MessageLookupByLibrary.simpleMessage("مدخل جديد"),
        "new_query": MessageLookupByLibrary.simpleMessage("استعلام جديد"),
        "new_request": MessageLookupByLibrary.simpleMessage("طلب جديد"),
        "new_update_available":
            MessageLookupByLibrary.simpleMessage("يتوفر إصدار جديد"),
        "new_update_available_desc": m28,
        "noEntries": MessageLookupByLibrary.simpleMessage("لا يوجد مدخلات"),
        "noMoreText":
            MessageLookupByLibrary.simpleMessage("لا يوجد المزيد من البيانات"),
        "noMoreTextCustom": m29,
        "noResult":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نتائج"),
        "noValidPhone":
            MessageLookupByLibrary.simpleMessage("رقم الهاتف غير صحيح"),
        "no_action_available":
            MessageLookupByLibrary.simpleMessage("لا يوجد إجراءات متاحة"),
        "no_available_services":
            MessageLookupByLibrary.simpleMessage("لا يوجد خدمات متاحة"),
        "no_comment":
            MessageLookupByLibrary.simpleMessage("لا تعليقات حتى الآن"),
        "no_comments_found":
            MessageLookupByLibrary.simpleMessage("لا توجد تعليقات"),
        "no_discussions":
            MessageLookupByLibrary.simpleMessage("لا نقاشات حتى الآن"),
        "no_notification":
            MessageLookupByLibrary.simpleMessage("لا يوجد اشعارات "),
        "no_result_found":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على نتائج"),
        "no_similar_fields":
            MessageLookupByLibrary.simpleMessage("لا يوجد حقول مشابهة"),
        "normal": MessageLookupByLibrary.simpleMessage("عادي"),
        "notAuthorized":
            MessageLookupByLibrary.simpleMessage("ليس لديك صلاحية"),
        "notExist": MessageLookupByLibrary.simpleMessage("غير متوفر"),
        "notHavePermissonToView": MessageLookupByLibrary.simpleMessage(
            "عذرًا، ليس لديك الإذن لعرض هذا السجل، الرجاء الاتصال بمسؤول النظام."),
        "notSet": MessageLookupByLibrary.simpleMessage("لم يتم التعيين"),
        "not_equal": MessageLookupByLibrary.simpleMessage("لا يساوي"),
        "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "now": MessageLookupByLibrary.simpleMessage("الآن"),
        "number": MessageLookupByLibrary.simpleMessage("رقم"),
        "obsolete": MessageLookupByLibrary.simpleMessage("بالية"),
        "on_date": MessageLookupByLibrary.simpleMessage("بتاريخ"),
        "ongoingInbox":
            MessageLookupByLibrary.simpleMessage("صندوق الوارد.الجارية"),
        "ongoingMyRequests":
            MessageLookupByLibrary.simpleMessage("الطلبات.الجارية"),
        "op_in": MessageLookupByLibrary.simpleMessage("في"),
        "op_not_in": MessageLookupByLibrary.simpleMessage("ليست في"),
        "operator": MessageLookupByLibrary.simpleMessage("العملية"),
        "or": MessageLookupByLibrary.simpleMessage("أو"),
        "orgUnitManager":
            MessageLookupByLibrary.simpleMessage("مدير وحدة تنظيمية"),
        "organizationUnit": MessageLookupByLibrary.simpleMessage("وحدة ادارية"),
        "organizationUnitName": MessageLookupByLibrary.simpleMessage("المنظمة"),
        "organization_information":
            MessageLookupByLibrary.simpleMessage("معلومات المنظمة"),
        "organization_url": MessageLookupByLibrary.simpleMessage("رابط الجهة"),
        "organization_url_error": MessageLookupByLibrary.simpleMessage(
            "الرجاء كتابة رابط الجهة بشكل صحيح"),
        "organization_url_hint": MessageLookupByLibrary.simpleMessage(
            "Example-organization.osos.com"),
        "organization_url_subtitle": MessageLookupByLibrary.simpleMessage(
            "الرجاء كتابة رابط الجهة الخاص بك, يمكنك التواصل مع الإدارة لذلك"),
        "other": MessageLookupByLibrary.simpleMessage("آخر"),
        "otherValues": MessageLookupByLibrary.simpleMessage("غير ذلك"),
        "others": MessageLookupByLibrary.simpleMessage("آخرين"),
        "our_gallery": MessageLookupByLibrary.simpleMessage("المعرض"),
        "our_mission": MessageLookupByLibrary.simpleMessage("مهمتنا"),
        "our_values": MessageLookupByLibrary.simpleMessage("قيمنا"),
        "our_vision": MessageLookupByLibrary.simpleMessage("رؤيتنا"),
        "pageError": MessageLookupByLibrary.simpleMessage("عفوا خطأ في الصفحة"),
        "page_zoom": MessageLookupByLibrary.simpleMessage("تكبير الصفحة"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "من فضلك ادخل على الاقل 6 حروف او ارقام"),
        "percentage": MessageLookupByLibrary.simpleMessage("نسبة مئوية"),
        "phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "phoneValidation":
            MessageLookupByLibrary.simpleMessage("من فضلك ادخل الجوال صحيحا"),
        "phone_verification":
            MessageLookupByLibrary.simpleMessage("تأكيد رقم الهاتف"),
        "pick": MessageLookupByLibrary.simpleMessage("مكتبة الصور"),
        "pickIcon": MessageLookupByLibrary.simpleMessage("حدد الأيقونة"),
        "please_add_recipients":
            MessageLookupByLibrary.simpleMessage("الرجاء إضافة مستلمين"),
        "please_contact_admin": MessageLookupByLibrary.simpleMessage(
            "بإمكانك التواصل مع المسؤولين."),
        "please_enter_a_unique_name":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال قيمة فريدة"),
        "please_enter_at_least_three_characters_in": m30,
        "please_enter_ur4digit": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال الرمز المؤلف من ٤ أرقام الذي تم إرساله الى هاتفك"),
        "please_fill_in_all_the_required_fields":
            MessageLookupByLibrary.simpleMessage(
                "الرجاء ملء جميع قيم الحقول الإجبارية"),
        "please_select_a_view":
            MessageLookupByLibrary.simpleMessage("الرجاء اختيار معرض"),
        "pointer": MessageLookupByLibrary.simpleMessage("مؤشر"),
        "press_again_to_exit":
            MessageLookupByLibrary.simpleMessage("اضغط مرة أخرى للخروج"),
        "previousStepOwner":
            MessageLookupByLibrary.simpleMessage("مالك خطوة سابقة"),
        "previous_steps":
            MessageLookupByLibrary.simpleMessage("الخطوات السابقة"),
        "previous_steps_original_owners": MessageLookupByLibrary.simpleMessage(
            "مالكو الخطوات السابقة الأساسيون"),
        "previous_steps_owners":
            MessageLookupByLibrary.simpleMessage("مالكو الخطوات السابقة"),
        "privacy_terms": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
        "proceedThreshold":
            MessageLookupByLibrary.simpleMessage("عتبة المتابعة"),
        "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
        "profile_no_join_group_yet": MessageLookupByLibrary.simpleMessage(
            "لم تنضم إلى أي مجموعة حتى الآن"),
        "profile_updated_successfully":
            MessageLookupByLibrary.simpleMessage("تم تحديث الملف الشخصي بنجاح"),
        "publish": MessageLookupByLibrary.simpleMessage("نشر"),
        "publish_at": m31,
        "publish_at_relative": m32,
        "publish_between_in": m33,
        "publish_between_in_relative": m34,
        "publish_in": m35,
        "publish_in_relative": m36,
        "query": m37,
        "quickLinks": MessageLookupByLibrary.simpleMessage("الروابط السريعة"),
        "quickServices":
            MessageLookupByLibrary.simpleMessage("الخدمات السريعة"),
        "range": MessageLookupByLibrary.simpleMessage("مجال"),
        "reaction_angry": MessageLookupByLibrary.simpleMessage("أغضبني"),
        "reaction_comment": MessageLookupByLibrary.simpleMessage("تعليق"),
        "reaction_comments": m38,
        "reaction_funny": MessageLookupByLibrary.simpleMessage("هاها"),
        "reaction_like": MessageLookupByLibrary.simpleMessage("إعجاب"),
        "reaction_likes": m39,
        "reaction_love": MessageLookupByLibrary.simpleMessage("أحببته"),
        "reaction_wow": MessageLookupByLibrary.simpleMessage("واو"),
        "read_less": MessageLookupByLibrary.simpleMessage("قراءة أقل"),
        "read_more": MessageLookupByLibrary.simpleMessage("قراءة المزيد"),
        "read_successfully":
            MessageLookupByLibrary.simpleMessage("قراءة بنجاح"),
        "reassignOwner":
            MessageLookupByLibrary.simpleMessage("إعادة تعيين المالك"),
        "reassignStepTo":
            MessageLookupByLibrary.simpleMessage("إعادة تعيين الخطوة إلى"),
        "recipients": MessageLookupByLibrary.simpleMessage("المستلمون"),
        "refresh": MessageLookupByLibrary.simpleMessage("تحديث"),
        "refreshCompleteText":
            MessageLookupByLibrary.simpleMessage("إنتهى التحديث"),
        "refreshFailedText":
            MessageLookupByLibrary.simpleMessage("فشل التحديث"),
        "refreshingText": MessageLookupByLibrary.simpleMessage("تحديث…"),
        "relation_no_main_title":
            MessageLookupByLibrary.simpleMessage("لا يوجد عنوان رئيسي"),
        "relative": MessageLookupByLibrary.simpleMessage("نسبيا"),
        "remove_from_collection": m40,
        "repeatField": MessageLookupByLibrary.simpleMessage("كرر الحقل"),
        "request": MessageLookupByLibrary.simpleMessage("طلب"),
        "requests": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "required_field": MessageLookupByLibrary.simpleMessage("الحقل مطلوب"),
        "reset": MessageLookupByLibrary.simpleMessage("تهيئة"),
        "resetWorkflow":
            MessageLookupByLibrary.simpleMessage("بقية خطوة سير العمل"),
        "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "returnToStep":
            MessageLookupByLibrary.simpleMessage("الرجوع للخطوة السابقة"),
        "save": MessageLookupByLibrary.simpleMessage("حفظ"),
        "saved_queries":
            MessageLookupByLibrary.simpleMessage("الاستعلامات المحفوظة"),
        "search": MessageLookupByLibrary.simpleMessage("بحث"),
        "see_more": MessageLookupByLibrary.simpleMessage("مشاهدة المزيد"),
        "select": MessageLookupByLibrary.simpleMessage("اختر"),
        "selectUserType":
            MessageLookupByLibrary.simpleMessage("حدد نوع المستخدم"),
        "select_a_date": MessageLookupByLibrary.simpleMessage("اختر تاريخ"),
        "select_a_month": MessageLookupByLibrary.simpleMessage("اختر شهر"),
        "select_a_rang": MessageLookupByLibrary.simpleMessage("اختر مجال"),
        "select_a_time": MessageLookupByLibrary.simpleMessage("اختر وقت"),
        "select_a_year": MessageLookupByLibrary.simpleMessage("اختر سنة"),
        "select_entity": MessageLookupByLibrary.simpleMessage("اختر كيان"),
        "select_entry": MessageLookupByLibrary.simpleMessage("تحديد المدخل"),
        "selected": MessageLookupByLibrary.simpleMessage("محددة"),
        "selectedRecords": m41,
        "selected_entry_name": m42,
        "selected_item_count": m43,
        "selectionType": MessageLookupByLibrary.simpleMessage("النوع المحدد"),
        "send": MessageLookupByLibrary.simpleMessage("إرسال"),
        "send_email":
            MessageLookupByLibrary.simpleMessage("أرسل بريد إلكتروني"),
        "send_notification": MessageLookupByLibrary.simpleMessage("أرسل إشعار"),
        "serviceCatalog": MessageLookupByLibrary.simpleMessage("دليل الخدمات"),
        "services": MessageLookupByLibrary.simpleMessage("الخدمات"),
        "settings": MessageLookupByLibrary.simpleMessage("الاعدادات"),
        "sign_out": MessageLookupByLibrary.simpleMessage("تسجيل خروج"),
        "singleUser": MessageLookupByLibrary.simpleMessage("مستخدم واحد"),
        "size_more_than_8mg": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون حجم الملف أقل من 8 ميحابيت"),
        "size_more_than_mg": m44,
        "size_more_than_mg_error": m45,
        "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
        "someUsers": MessageLookupByLibrary.simpleMessage("بعض المستخدمين"),
        "some_condition_met":
            MessageLookupByLibrary.simpleMessage("بعض الشروط محققة"),
        "some_mandatory_fields_are_required_before_taking_an_action_please_contact_the_system_administration":
            MessageLookupByLibrary.simpleMessage(
                "يوجد حقول إجبارية لذلك لايمكنك اتخاذ الإجراء، الرجاء التواصل مع إدارة النظام"),
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("حدث خطأ ما"),
        "sort_by": MessageLookupByLibrary.simpleMessage("فرز حسب"),
        "sort_direction": MessageLookupByLibrary.simpleMessage("جهة الفرز"),
        "source": MessageLookupByLibrary.simpleMessage("المصدر"),
        "specific_user_group": MessageLookupByLibrary.simpleMessage(
            " مستخدم محدد أو مجموعة محددة"),
        "specific_users_who_can_access_your_message":
            MessageLookupByLibrary.simpleMessage(
                "مستخدمون محددون يمكنهم مشاهدة رسالتك"),
        "start_exploring": MessageLookupByLibrary.simpleMessage("تصفح"),
        "start_of_day": MessageLookupByLibrary.simpleMessage("بداية اليوم"),
        "start_of_month": MessageLookupByLibrary.simpleMessage("بداية الشهر"),
        "start_of_week": MessageLookupByLibrary.simpleMessage("بداية الأسبوع"),
        "start_of_year": MessageLookupByLibrary.simpleMessage("بداية السنة"),
        "start_year": MessageLookupByLibrary.simpleMessage("سنة البداية"),
        "startedFrom": m46,
        "starts_with": MessageLookupByLibrary.simpleMessage("يبدأ ب"),
        "static": MessageLookupByLibrary.simpleMessage("ثابت"),
        "status": MessageLookupByLibrary.simpleMessage("الحالة"),
        "stay": MessageLookupByLibrary.simpleMessage("البقاء"),
        "stay_with_all_on_touch":
            MessageLookupByLibrary.simpleMessage("ابق على اتصال مع الجميع"),
        "stepName": MessageLookupByLibrary.simpleMessage("اسم الخطوة"),
        "stepOwner": MessageLookupByLibrary.simpleMessage("صاحب الخطوة"),
        "stepOwnerSourceType":
            MessageLookupByLibrary.simpleMessage("نوع مصدر مالك الخطوة"),
        "stepType": MessageLookupByLibrary.simpleMessage("نوع الخطوة"),
        "subject": MessageLookupByLibrary.simpleMessage("الموضوع"),
        "success_story": MessageLookupByLibrary.simpleMessage("قصص النجاح"),
        "sure_to_close_dialog_without_save":
            MessageLookupByLibrary.simpleMessage(
                "هل أنت متأكد من مغادرة الصفحة من دون حفظ التعديلات؟"),
        "table": MessageLookupByLibrary.simpleMessage("جدول"),
        "takeOwnerShip": MessageLookupByLibrary.simpleMessage("أخذ الملكية"),
        "tapToUpload":
            MessageLookupByLibrary.simpleMessage("انقر لبدء تحميل ملفاتك"),
        "tap_to_add": MessageLookupByLibrary.simpleMessage("اضغط للإضافة"),
        "tap_to_choose_collection": m47,
        "test": MessageLookupByLibrary.simpleMessage("تجريب"),
        "text_input_hint": MessageLookupByLibrary.simpleMessage("اضافة نص"),
        "the_action_was_executed_successfully":
            MessageLookupByLibrary.simpleMessage("تم تنفيذ الإجراء بنجاح"),
        "the_collection_has_no_entries_to_export": m48,
        "the_collection_name_is_duplicated": m49,
        "the_collection_name_is_unique_please_enter_a_new_name": m50,
        "the_file_downloaded_successfully": m51,
        "the_summary_does_not_exist":
            MessageLookupByLibrary.simpleMessage("الخلاصة غير موجودة!"),
        "theme": MessageLookupByLibrary.simpleMessage("السمة"),
        "there_is_no_completed_requests":
            MessageLookupByLibrary.simpleMessage("لا يوجد طلبات واردة مكتملة"),
        "there_is_no_ongoing_requests":
            MessageLookupByLibrary.simpleMessage("لا يوجد طلبات واردة جارية"),
        "this_month": MessageLookupByLibrary.simpleMessage("هذا الشهر"),
        "this_week": MessageLookupByLibrary.simpleMessage("هذا الأسبوع"),
        "thresholdType":
            MessageLookupByLibrary.simpleMessage("نوع عتبة المتابعة"),
        "thresholdValuePercentageInvalid": MessageLookupByLibrary.simpleMessage(
            "عتبة المتابعة يجب أن تكون بين 0 و 100"),
        "thresholdValueRequired":
            MessageLookupByLibrary.simpleMessage("الرجاء إدخال عتبة المتابعة"),
        "timeline": MessageLookupByLibrary.simpleMessage("الشريط الزمني"),
        "title": MessageLookupByLibrary.simpleMessage("العنوان"),
        "to": MessageLookupByLibrary.simpleMessage("إلى"),
        "toStart": MessageLookupByLibrary.simpleMessage(" للبدء"),
        "to_end": MessageLookupByLibrary.simpleMessage("للانتهاء"),
        "to_time": m52,
        "today": MessageLookupByLibrary.simpleMessage("اليوم"),
        "translation": MessageLookupByLibrary.simpleMessage("الترجمة"),
        "tree": MessageLookupByLibrary.simpleMessage("شجري"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("حاول مجددا"),
        "type": MessageLookupByLibrary.simpleMessage("النوع"),
        "type_ur_comment": MessageLookupByLibrary.simpleMessage("اكتب تعليقك"),
        "un_authorize_to_add_request": MessageLookupByLibrary.simpleMessage(
            "لست مخوّلاً لإضافة طلب جديد ضمن هذه الخدمة"),
        "un_obsolete": MessageLookupByLibrary.simpleMessage("غير بالية"),
        "un_publish": MessageLookupByLibrary.simpleMessage("حجب"),
        "un_publish_at": m53,
        "un_publish_at_relative": m54,
        "un_publish_in": m55,
        "un_publish_in_relative": m56,
        "unarchived": MessageLookupByLibrary.simpleMessage("غير مؤرشف"),
        "unassigned": MessageLookupByLibrary.simpleMessage("غير معين"),
        "undefined": MessageLookupByLibrary.simpleMessage("غير معرف"),
        "uniqueValue": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون للحقل قيمة فريدة"),
        "update": MessageLookupByLibrary.simpleMessage("تحديث"),
        "update_fields": MessageLookupByLibrary.simpleMessage("تعديل الحقول"),
        "update_required": MessageLookupByLibrary.simpleMessage("تحديث مطلوب"),
        "update_required_desc": MessageLookupByLibrary.simpleMessage(
            "الإصدار الحالي لديك لم يعد مدعوماً\nالرجاء التحديث لأحدث إصدار."),
        "update_to": m57,
        "updated_at": MessageLookupByLibrary.simpleMessage("تارخ التحديث"),
        "updated_by": MessageLookupByLibrary.simpleMessage("التحديث بواسطة"),
        "updates": MessageLookupByLibrary.simpleMessage("التحديثات"),
        "user": MessageLookupByLibrary.simpleMessage("مستخدم"),
        "userName": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
        "user_collection":
            MessageLookupByLibrary.simpleMessage("قائمة مستخدمين"),
        "v_you_should_upload_at_least": m58,
        "v_you_should_upload_at_most": m59,
        "value": MessageLookupByLibrary.simpleMessage("القيمة"),
        "valueAdded": MessageLookupByLibrary.simpleMessage("القيمة المضافة"),
        "valueChanged": MessageLookupByLibrary.simpleMessage("تغيرت القيمة"),
        "valueRemoved":
            MessageLookupByLibrary.simpleMessage("تمت إزالة القيمة "),
        "version": m60,
        "view": MessageLookupByLibrary.simpleMessage("عرض"),
        "viewAll": MessageLookupByLibrary.simpleMessage("عرض الكل"),
        "view_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
        "view_entity": MessageLookupByLibrary.simpleMessage("عرض الكيان"),
        "view_entry": MessageLookupByLibrary.simpleMessage("عرض المدخل"),
        "view_type": MessageLookupByLibrary.simpleMessage("نوع العرض"),
        "views": m61,
        "visitView": MessageLookupByLibrary.simpleMessage("زيارة المعرض"),
        "week": MessageLookupByLibrary.simpleMessage("أسبوع"),
        "week_ago": MessageLookupByLibrary.simpleMessage("منذ أسبوع"),
        "welcome": MessageLookupByLibrary.simpleMessage("أهـــــــــلاً"),
        "welcome_user_subtitle": m62,
        "welcome_user_title": m63,
        "wellDone": MessageLookupByLibrary.simpleMessage("تم بنجاح"),
        "what_you_want_to_add":
            MessageLookupByLibrary.simpleMessage("ما الذي تريد إضافته"),
        "who_can_read_this_message":
            MessageLookupByLibrary.simpleMessage("من يمكنه مشاهدة هذه الرسالة"),
        "who_can_read_your_message":
            MessageLookupByLibrary.simpleMessage("من يمكنه مشاهدة رسالتك"),
        "who_we_are": MessageLookupByLibrary.simpleMessage("من نحن"),
        "workflow": MessageLookupByLibrary.simpleMessage("تدفق العمل"),
        "workflowActionMessage":
            MessageLookupByLibrary.simpleMessage("تم تنفيذ الإجراء بنجاح"),
        "write_your_comment":
            MessageLookupByLibrary.simpleMessage("اكتب رسائلك ..."),
        "yearGreaterThan": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون الحقل أكبر من سنة"),
        "yearLessThan": MessageLookupByLibrary.simpleMessage(
            "يجب أن يكون الحقل أقل من سنة"),
        "you": MessageLookupByLibrary.simpleMessage("أنت"),
        "you_do_not_have_any_completed_request":
            MessageLookupByLibrary.simpleMessage("لا يوجد لديك طلبات مكتملة"),
        "you_do_not_have_any_ongoing_request":
            MessageLookupByLibrary.simpleMessage("لا يوجد لديك طلبات جارية"),
        "you_dont_have_access":
            MessageLookupByLibrary.simpleMessage("ليس لديك الصلاحية"),
        "you_haven_not_created_any_lists_yet":
            MessageLookupByLibrary.simpleMessage("لا توجد قوائم منشئة"),
        "you_should_authenticate_to_continue":
            MessageLookupByLibrary.simpleMessage("يجب عليك المصادقة للمتابعة"),
        "your_location": MessageLookupByLibrary.simpleMessage("الموقع")
      };
}
