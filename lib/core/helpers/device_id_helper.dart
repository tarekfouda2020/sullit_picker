import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeviceIdHelper{
  Future<String?> getDeviceId() async{
    final FirebaseMessaging messaging = FirebaseMessaging.instance;
    var token = await messaging.getToken();
    return token;

  }
}