import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceIdHelper{
  Future<String?> getDeviceId() async{
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    var token = await messaging.getToken();
    return token;

  }


  Future<void> clearDeviceToken() async {
    try {
      await FirebaseMessaging.instance.deleteToken();
      log("✅ FCM token deleted successfully");
    } catch (e) {
      log("⚠️ Failed to delete FCM token: $e");
    }
  }


}